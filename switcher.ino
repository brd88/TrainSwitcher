
// PORT definitions

// 0 and 1 are used for the serial port

const uint8_t lshift = 2;
const uint8_t lstore = 3;
const uint8_t ldata = 4;

// 5 is unused

const uint8_t cdata  = 6;
const uint8_t cshift = 7;
const uint8_t cstore = 8;

const uint8_t sw1 = A4;
const uint8_t sw2 = A3;
const uint8_t sw3 = A2;
const uint8_t sw4 = A1;
const uint8_t sw5 = A0;
const uint8_t sw6 = 13;
const uint8_t sw7 = 12;
const uint8_t sw8 = 11;
const uint8_t sw9 = 10;
const uint8_t sw10 = 9;

const uint8_t coilv = A5;

unsigned long lastMillis = 0;
unsigned int vhi;
unsigned int vlow;
unsigned char vcount;

#define strobe(pin)    digitalWrite(pin, HIGH); digitalWrite(pin, LOW)

// Pushbuttons/LEDs

// There are up to 10 LED ilumintated push buttons
// mapping to setting or clearing one or more physical track
// switches.

// Each logical track switch is controlled by
// a pushbutton and has a LED indicating
// its current state.

#define BUTTON_COUNT    10
#define LED_COUNT       (BUTTON_COUNT)

// Indicates the input port for each push button 
// switch

uint8_t pb_in[BUTTON_COUNT] = {
    sw1, sw2, sw3, sw4, sw5,
    sw6, sw7, sw8, sw9, sw10};

// Desired switch state and current state.

uint16_t desiredState = 0;
uint16_t currentState = 0;


// Button debouncing.   We use an array of 16 bit values to hold the last
// three values of up to 16 buttons.   Then,
// if a particular bit is 1 in all the arrays, that means we have read a
// one.   If a particular bit is 0 in all the arrays, that means have read
// a zero.   Any other combination means no change.  
// The last value is saved so we can compare it to the current
// value to detect any changes.

uint16_t debounce[3] = {
    0,0,0};   // Holds last 3 sets of switch readings
uint8_t dcount = 0;              // Debounce counter (current index into debounce array)
uint16_t last = 0;                // Last state of all switches

uint16_t bits[16] = {
    1,2,4,8,16,32,64,128,256,
    512,1024,2048,4096,8192,16384,32768};

// Physical track switches and coils

// There can be up to 16 physical track switches
// each one containing two coils, one
// to throw the switch and one to
// clear the switch.   

#define TRACK_SWITCH_COUNT    16
#define COIL_COUNT            (TRACK_SWITCH_COUNT*2)

#define VDELAY        5

uint32_t coils;            // Coils needing to be energized
enum coilState {             // State of coil energizer
    idle, checkAndUpdate, energize, wait};

enum coilState state;
enum coilState oldstate;
unsigned int scount;

// Pushbutton being processed
unsigned char pb = 0;

// These arrays map the physical coil(s) to
// be energized to set or clear a particular
// track switch 
// You specify
// the physical track switches by a number
// from 1 to 16.
// Note that a particular push button and
// set multiple coils.

#define set_coil(trackswitch)    (1L<<(((trackswitch-1)*2)+1))
#define clr_coil(trackswitch)    (1L<<(((trackswitch-1)*2)+0))    

uint32_t set_switch[BUTTON_COUNT] = {
    set_coil(1)+set_coil(2),
    set_coil(3)+set_coil(4),
    set_coil(5)+set_coil(6),
    set_coil(7),
    set_coil(8),
    set_coil(9),
    set_coil(10),
    set_coil(11),
    set_coil(12),
    set_coil(13)};

uint32_t clear_switch[BUTTON_COUNT] = {
    clr_coil(1)+clr_coil(2),
    clr_coil(3)+clr_coil(4),
    clr_coil(5)+clr_coil(6),
    clr_coil(7),
    clr_coil(8),
    clr_coil(9),
    clr_coil(10),
    clr_coil(11),
    clr_coil(12),
    clr_coil(13)};

// Initialization

void setup() {
    uint8_t pb;
    int val;
    int i;

    // Serial setup
    Serial.begin(9600);
    Serial.println("Here we go");

    state = idle;
    oldstate = idle;
    scount = 0;

    // Initialize ports for pb switches
    // INPUT with pullups
    for (pb=0; pb < BUTTON_COUNT; pb++) {
        pinMode(pb_in[pb], INPUT);
        digitalWrite(pb_in[pb], HIGH);  // Set pullups
    }

    // Initial analog Comparator
    // init_comparator(coilv);

    // Initialize ports for coil shift register
    // OUTPUT with initial value == 0

    pinMode(cdata, OUTPUT);
    pinMode(cshift, OUTPUT);
    pinMode(cstore, OUTPUT);
    digitalWrite(cdata, LOW);
    digitalWrite(cshift, LOW);
    digitalWrite(cstore, LOW);

    // Clear coil shift register
    deenergize_coils();

    // Initialize ports for LED shift registers
    // OUTPUT with initial value = 0
    pinMode(ldata, OUTPUT);
    pinMode(lshift, OUTPUT);
    pinMode(lstore, OUTPUT);
    digitalWrite(ldata, LOW);
    digitalWrite(lshift, LOW);
    digitalWrite(lstore, LOW);

    // Clear shift registers

    update_leds(0);
    delay(500);

    // LED test
    for (i=0; i < 16; i++) {
        update_leds(1<<i);
        delay(500);
    }                                                                                       
    update_leds(0);            

    vhi = 0;
    for (i=0; i < 10; i++) {
        vhi += get_voltage();
        Serial.println(vhi);
    }
    vhi /= 10;  
    vhi -= 5; 

    Serial.println(vhi);
    vlow = 10;

    // Cycle all the switches

    desiredState = 0;
    currentState = 0;

    // Set all the track switches

    for (pb = 0; pb < BUTTON_COUNT; pb++) {
        desiredState |= bits[pb];
        while((currentState & bits[pb]) == 0) {
            coil_state_machine();
        }
    }

    // Clear all the track switches
    for (pb = 0; pb < BUTTON_COUNT; pb++) {
        desiredState &= ~bits[pb];
        while(currentState & bits[pb]) {
            coil_state_machine();
        }
    }
}

void loop() {
    read_buttons();
    coil_state_machine();
}

// Energize a coil

void energize_coil(int coilno) {

    int i;

    digitalWrite(cdata, LOW);
    digitalWrite(cshift, LOW);
    digitalWrite(cstore, LOW);

    // Shift in bit == 1 for coil to be energized
    // All other bits == 0

    // Coil control shift register is 32 bits long
    for (i=0; i < 32; i++) {
        digitalWrite(cdata, (i == coilno) ? HIGH : LOW);
        strobe(cshift);
    }

    // Strobe into COIL register
    strobe(cstore);
}

void deenergize_coils() {

    int i;

    digitalWrite(cdata, LOW);
    digitalWrite(cshift, LOW);
    digitalWrite(cstore, LOW);

    // Shift in all zeros

    // Coil control shift register is 32 bits lolng
    for (i=0; i < 32; i++) {
        strobe(cshift);
    }

    // Strobe into COIL register
    strobe(cstore);
}


// Handles the energizing of the switch coils.
// Uses a state engine
//  idle -- idle state4
//  checkAndUpdate -- look for coil to energize and update LEDs 
//  energize -- wait for energizing voltage and energize coil
//  wait -- wait for coil to discharge capacitor
//
// global "pb" is the switch being processed

void coil_state_machine() {

    uint8_t i;

    // check_state();

    // Coil energizing state machine
    switch (state) {

    case idle:  //idle: Check next pb for any change
        pb = (pb + 1) % BUTTON_COUNT;   // Go to next pb
        // Look for changes
        if ((desiredState & bits[pb]) != (currentState & bits[pb])) {
            // Mark coils to be energized and set state to looking
            coils |= (desiredState & bits[pb]) ? set_switch[pb] : clear_switch[pb];
            state = checkAndUpdate;
        }
        break;


    case checkAndUpdate:  // Energize any coils, else update current state/LEDs
        if (coils != 0) {            // Anything left to do?
            state = energize;   // Yes...energize
            vcount = VDELAY;
        } 
        else {            // All done...   
            currentState ^= bits[pb];
            update_leds(currentState);
            state = idle;
        }
        break;


    case energize:  // Energize coil
        if (get_voltage() > vhi) {   // Make sure cap charged
            if (--vcount == 0) {
                for (i=0; i < COIL_COUNT; i++) {  // Energize
                    if (coils & (1L << i)) { 
                        coils &= ~(1L << i);
                        energize_coil(i);
                        state = wait;
                        vcount = VDELAY;
                        break;
                    }
                }
            }
        }
        break; 


    case wait: // Wait for coil to decharge cap
        if (get_voltage() < vlow) {
            if (--vcount == 0) {
                deenergize_coils();
                state = checkAndUpdate;
            }
        }
        break;
    }
}

void update_leds(uint16_t leds)
{
    int8_t ledno;

    digitalWrite(ldata, LOW);
    digitalWrite(lshift, LOW);
    digitalWrite(lstore, LOW);

    // Shift in LED bits
    for (ledno = 0; ledno < 16; ledno++) {
        digitalWrite(ldata, (leds & bits[ledno]) ? HIGH : LOW);
        strobe(lshift);
    }

    // Set LED register
    strobe(lstore);
}

// Sample the switches (called once each millisecond)
// Implements a toggle (on/off) each time a button is pushed
// The variable desiredState contains the current
// value of the switches.

void read_buttons() {

    uint8_t pb;
    uint16_t result;
    uint16_t current;
    uint16_t changes;
    unsigned long nowtime;

    // Read push buttons

    // This happens once per millisecond   
    nowtime = millis();
    if (nowtime == lastMillis)
        return;
    lastMillis = nowtime;  

    // Read in the switches in result
    result = 0;
    for (pb=0; pb < BUTTON_COUNT; pb++)
        if (digitalRead(pb_in[pb]) == LOW)
            result |= bits[pb];

    // Debounce push buttons and store in variable "current"
    // We keep the last three values of all the switches
    // and if they are all 1, then the switch has been
    // pushed.   If the last three values are all 0 then
    // the switch has been released..    
    *(debounce + dcount) = result;        // Save switch readings
    // Set any push buttons now pushed (last three reads all one)
    current = last | ( (*debounce) & (*(debounce+1)) & (*(debounce+2)) );
    // Clear any push buttons now released (last three reads all zero)
    current = current & ( (*debounce) | (*(debounce+1)) | (*(debounce+2)) );        
    dcount = (dcount + 1) % 3;

    // Current now contains current state of all push buttons

    // Calculate changes        
    changes = last ^ current;

    // Process changes
    // We only care about button becoming pushed as 
    // we are implementing a toggle when a button is
    // pushed
    if (changes) {
        for (pb = 0; pb < BUTTON_COUNT; pb++) {
            if ((changes & bits[pb]) && (current & bits[pb])) 
                desiredState ^= bits[pb];
        }
    }
    last = current;
}

unsigned int get_voltage()
{
    unsigned int val;

    val = analogRead(coilv);
    return (val * 62) / 256;
}


/*
#if 0
 
 // Analog Comparator
 // Use to check switch coil capacitor voltage
 
 void init_comparator(int port)
 {
 ACSR &= ~(1<<ACIE); //disable interrupts on AC
 ACSR &= ~(1<<ACD); //switch on the AC
 ACSR |= (1<<ACBG); //set Internal Voltage Reference (1V1)
 ADCSRA &= ~(1<<ADEN);
 ADMUX &= ~31; //reset the first 5 bits
 ADMUX |= port; //choose the ADC channel (0..NUM_ANALOG_INPUTS-1)
 ADCSRB |= (1<<ACME);
 }
 
 boolean voltage_ok()
 {
 return ((ACSR && (1<<ACO)) == 1);
 }
 
 */


void check_state() {
    if (state != oldstate) {
        Serial.print(oldstate);
        Serial.print("->");
        Serial.print(state);
        Serial.print(":");
        Serial.println(scount);
        oldstate = state;
        scount = 1;
    } 
    else 
        scount++;
}













