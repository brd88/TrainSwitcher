EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mainboard-rescue:ATMEGA328-P-RESCUE-mainboard-mainboard-rescue IC1
U 1 1 526A06E7
P 3200 2750
F 0 "IC1" H 2450 4000 40  0000 L BNN
F 1 "ATMEGA328-P" H 3600 1350 40  0000 L BNN
F 2 "DIL28" H 3200 2750 30  0000 C CIN
F 3 "" H 3200 2750 60  0000 C CNN
	1    3200 2750
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:GND-power1 #PWR01
U 1 1 526A0716
P 2100 4200
F 0 "#PWR01" H 2100 4200 30  0001 C CNN
F 1 "GND" H 2100 4130 30  0001 C CNN
F 2 "" H 2100 4200 60  0000 C CNN
F 3 "" H 2100 4200 60  0000 C CNN
	1    2100 4200
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_3-mainboard-rescue P2
U 1 1 526A0734
P 1250 5050
F 0 "P2" V 1200 5050 50  0000 C CNN
F 1 "POWER" V 1300 5050 40  0000 C CNN
F 2 "" H 1250 5050 60  0000 C CNN
F 3 "" H 1250 5050 60  0000 C CNN
	1    1250 5050
	-1   0    0    1   
$EndComp
$Comp
L mainboard-rescue:GND-power1 #PWR02
U 1 1 526A074E
P 2350 5200
F 0 "#PWR02" H 2350 5200 30  0001 C CNN
F 1 "GND" H 2350 5130 30  0001 C CNN
F 2 "" H 2350 5200 60  0000 C CNN
F 3 "" H 2350 5200 60  0000 C CNN
	1    2350 5200
	1    0    0    -1  
$EndComp
Text Label 1700 4950 0    60   ~ 0
COILV
Text Label 1700 5150 0    60   ~ 0
VCC
Text Label 2050 1300 0    60   ~ 0
VCC
Text Label 6900 1200 0    60   ~ 0
SW1
Text Label 6900 1300 0    60   ~ 0
SW2
Text Label 6900 1400 0    60   ~ 0
SW3
Text Label 6900 1500 0    60   ~ 0
SW4
Text Label 4550 1750 0    60   ~ 0
SW1
$Comp
L mainboard-rescue:GND-power1 #PWR03
U 1 1 526A0A00
P 6700 2000
F 0 "#PWR03" H 6700 2000 30  0001 C CNN
F 1 "GND" H 6700 1930 30  0001 C CNN
F 2 "" H 6700 2000 60  0000 C CNN
F 3 "" H 6700 2000 60  0000 C CNN
	1    6700 2000
	1    0    0    -1  
$EndComp
Text Label 6900 1600 0    60   ~ 0
SW5
Text Label 6900 2000 0    60   ~ 0
SW6
Text Label 6900 2100 0    60   ~ 0
SW7
Text Label 6900 2200 0    60   ~ 0
SW8
Text Label 6900 2300 0    60   ~ 0
SW9
Text Label 6900 2400 0    60   ~ 0
SW10
Text Label 4550 1850 0    60   ~ 0
SW2
Text Label 4550 1950 0    60   ~ 0
SW3
Text Label 4550 2050 0    60   ~ 0
SW4
Text Label 4550 2150 0    60   ~ 0
SW5
Text Label 4550 2500 0    60   ~ 0
SW6
Text Label 4550 2600 0    60   ~ 0
SW7
Text Label 4550 2700 0    60   ~ 0
SW8
Text Label 4550 2800 0    60   ~ 0
SW9
Text Label 4550 2900 0    60   ~ 0
SW10
$Comp
L mainboard-rescue:TPIC6B595-mylib U2
U 1 1 526AC933
P 7400 4000
F 0 "U2" H 7550 4600 70  0000 C CNN
F 1 "TPIC6B595" H 7400 3400 70  0000 C CNN
F 2 "" H 7400 4000 60  0000 C CNN
F 3 "" H 7400 4000 60  0000 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:TPIC6B595-mylib U3
U 1 1 526AC942
P 7450 5450
F 0 "U3" H 7600 6050 70  0000 C CNN
F 1 "TPIC6B595" H 7450 4850 70  0000 C CNN
F 2 "" H 7450 5450 60  0000 C CNN
F 3 "" H 7450 5450 60  0000 C CNN
	1    7450 5450
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_4-mainboard-rescue P3
U 1 1 526AC960
P 8950 3700
F 0 "P3" V 8900 3700 50  0000 C CNN
F 1 "LED1" V 9000 3700 50  0000 C CNN
F 2 "" H 8950 3700 60  0000 C CNN
F 3 "" H 8950 3700 60  0000 C CNN
	1    8950 3700
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_4-mainboard-rescue P4
U 1 1 526AC96F
P 8950 4100
F 0 "P4" V 8900 4100 50  0000 C CNN
F 1 "LED2" V 9000 4100 50  0000 C CNN
F 2 "" H 8950 4100 60  0000 C CNN
F 3 "" H 8950 4100 60  0000 C CNN
	1    8950 4100
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_4-mainboard-rescue P5
U 1 1 526AC97E
P 9000 5150
F 0 "P5" V 8950 5150 50  0000 C CNN
F 1 "LED3" V 9050 5150 50  0000 C CNN
F 2 "" H 9000 5150 60  0000 C CNN
F 3 "" H 9000 5150 60  0000 C CNN
	1    9000 5150
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_4-mainboard-rescue P6
U 1 1 526AC98D
P 9000 5550
F 0 "P6" V 8950 5550 50  0000 C CNN
F 1 "LED4" V 9050 5550 50  0000 C CNN
F 2 "" H 9000 5550 60  0000 C CNN
F 3 "" H 9000 5550 60  0000 C CNN
	1    9000 5550
	1    0    0    -1  
$EndComp
Text Label 6100 3850 0    60   ~ 0
VCC
Text Label 6200 5300 0    60   ~ 0
VCC
$Comp
L mainboard-rescue:GND-power1 #PWR04
U 1 1 526ACB37
P 6550 4250
F 0 "#PWR04" H 6550 4250 30  0001 C CNN
F 1 "GND" H 6550 4180 30  0001 C CNN
F 2 "" H 6550 4250 60  0000 C CNN
F 3 "" H 6550 4250 60  0000 C CNN
	1    6550 4250
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:GND-power1 #PWR05
U 1 1 526ACB3D
P 6600 5700
F 0 "#PWR05" H 6600 5700 30  0001 C CNN
F 1 "GND" H 6600 5630 30  0001 C CNN
F 2 "" H 6600 5700 60  0000 C CNN
F 3 "" H 6600 5700 60  0000 C CNN
	1    6600 5700
	1    0    0    -1  
$EndComp
Text Label 6200 5200 0    60   ~ 0
LSHIFT
Text Label 6200 5500 0    60   ~ 0
LSTORE
Text Label 6100 4050 0    60   ~ 0
LSTORE
Text Label 6100 3750 0    60   ~ 0
LSHIFT
Text Label 6100 3600 0    60   ~ 0
LDATA
$Comp
L mainboard-rescue:GND-power1 #PWR06
U 1 1 526ACF01
P 2950 5600
F 0 "#PWR06" H 2950 5600 30  0001 C CNN
F 1 "GND" H 2950 5530 30  0001 C CNN
F 2 "" H 2950 5600 60  0000 C CNN
F 3 "" H 2950 5600 60  0000 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
Text Label 3200 5300 0    60   ~ 0
VCC
Text Label 3200 4900 0    60   ~ 0
CSHIFT
Text Label 3200 5000 0    60   ~ 0
CSTORE
Text Label 3200 4800 0    60   ~ 0
CDATA
Text Label 4550 3650 0    60   ~ 0
LDATA
Text Label 4550 3550 0    60   ~ 0
LSTORE
Text Label 4550 3450 0    60   ~ 0
LSHIFT
Text Label 4550 3850 0    60   ~ 0
CDATA
Text Label 4550 3950 0    60   ~ 0
CSHIFT
Text Label 4550 1650 0    60   ~ 0
CSTORE
$Comp
L mainboard-rescue:C-RESCUE-mainboard-mainboard-rescue C1
U 1 1 526ADBFD
P 2050 2450
F 0 "C1" H 2050 2550 40  0000 L CNN
F 1 ".1u" H 2056 2365 40  0000 L CNN
F 2 "" H 2088 2300 30  0000 C CNN
F 3 "" H 2050 2450 60  0000 C CNN
	1    2050 2450
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:GND-power1 #PWR07
U 1 1 526ADC52
P 2050 2750
F 0 "#PWR07" H 2050 2750 30  0001 C CNN
F 1 "GND" H 2050 2680 30  0001 C CNN
F 2 "" H 2050 2750 60  0000 C CNN
F 3 "" H 2050 2750 60  0000 C CNN
	1    2050 2750
	1    0    0    -1  
$EndComp
Text Label 4550 3250 0    60   ~ 0
RXD
Text Label 4550 3350 0    60   ~ 0
TXD
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R9
U 1 1 526AE02B
P 8400 5000
F 0 "R9" V 8480 5000 40  0000 C CNN
F 1 "R" V 8407 5001 40  0000 C CNN
F 2 "" V 8330 5000 30  0000 C CNN
F 3 "" H 8400 5000 30  0000 C CNN
	1    8400 5000
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R10
U 1 1 526AE038
P 8400 5100
F 0 "R10" V 8480 5100 40  0000 C CNN
F 1 "R" V 8407 5101 40  0000 C CNN
F 2 "" V 8330 5100 30  0000 C CNN
F 3 "" H 8400 5100 30  0000 C CNN
	1    8400 5100
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R11
U 1 1 526AE03E
P 8400 5200
F 0 "R11" V 8480 5200 40  0000 C CNN
F 1 "R" V 8407 5201 40  0000 C CNN
F 2 "" V 8330 5200 30  0000 C CNN
F 3 "" H 8400 5200 30  0000 C CNN
	1    8400 5200
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R12
U 1 1 526AE044
P 8400 5300
F 0 "R12" V 8480 5300 40  0000 C CNN
F 1 "R" V 8407 5301 40  0000 C CNN
F 2 "" V 8330 5300 30  0000 C CNN
F 3 "" H 8400 5300 30  0000 C CNN
	1    8400 5300
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R13
U 1 1 526AE04A
P 8400 5400
F 0 "R13" V 8480 5400 40  0000 C CNN
F 1 "R" V 8407 5401 40  0000 C CNN
F 2 "" V 8330 5400 30  0000 C CNN
F 3 "" H 8400 5400 30  0000 C CNN
	1    8400 5400
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R14
U 1 1 526AE050
P 8400 5500
F 0 "R14" V 8480 5500 40  0000 C CNN
F 1 "R" V 8407 5501 40  0000 C CNN
F 2 "" V 8330 5500 30  0000 C CNN
F 3 "" H 8400 5500 30  0000 C CNN
	1    8400 5500
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R15
U 1 1 526AE056
P 8400 5600
F 0 "R15" V 8480 5600 40  0000 C CNN
F 1 "R" V 8407 5601 40  0000 C CNN
F 2 "" V 8330 5600 30  0000 C CNN
F 3 "" H 8400 5600 30  0000 C CNN
	1    8400 5600
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R16
U 1 1 526AE05C
P 8400 5700
F 0 "R16" V 8480 5700 40  0000 C CNN
F 1 "R" V 8407 5701 40  0000 C CNN
F 2 "" V 8330 5700 30  0000 C CNN
F 3 "" H 8400 5700 30  0000 C CNN
	1    8400 5700
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R1
U 1 1 526AE062
P 8350 3550
F 0 "R1" V 8430 3550 40  0000 C CNN
F 1 "R" V 8357 3551 40  0000 C CNN
F 2 "" V 8280 3550 30  0000 C CNN
F 3 "" H 8350 3550 30  0000 C CNN
	1    8350 3550
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R2
U 1 1 526AE068
P 8350 3650
F 0 "R2" V 8430 3650 40  0000 C CNN
F 1 "R" V 8357 3651 40  0000 C CNN
F 2 "" V 8280 3650 30  0000 C CNN
F 3 "" H 8350 3650 30  0000 C CNN
	1    8350 3650
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R3
U 1 1 526AE06E
P 8350 3750
F 0 "R3" V 8430 3750 40  0000 C CNN
F 1 "R" V 8357 3751 40  0000 C CNN
F 2 "" V 8280 3750 30  0000 C CNN
F 3 "" H 8350 3750 30  0000 C CNN
	1    8350 3750
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R4
U 1 1 526AE074
P 8350 3850
F 0 "R4" V 8430 3850 40  0000 C CNN
F 1 "R" V 8357 3851 40  0000 C CNN
F 2 "" V 8280 3850 30  0000 C CNN
F 3 "" H 8350 3850 30  0000 C CNN
	1    8350 3850
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R5
U 1 1 526AE07A
P 8350 3950
F 0 "R5" V 8430 3950 40  0000 C CNN
F 1 "R" V 8357 3951 40  0000 C CNN
F 2 "" V 8280 3950 30  0000 C CNN
F 3 "" H 8350 3950 30  0000 C CNN
	1    8350 3950
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R6
U 1 1 526AE086
P 8350 4050
F 0 "R6" V 8430 4050 40  0000 C CNN
F 1 "R" V 8357 4051 40  0000 C CNN
F 2 "" V 8280 4050 30  0000 C CNN
F 3 "" H 8350 4050 30  0000 C CNN
	1    8350 4050
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R7
U 1 1 526AE08C
P 8350 4150
F 0 "R7" V 8430 4150 40  0000 C CNN
F 1 "R" V 8357 4151 40  0000 C CNN
F 2 "" V 8280 4150 30  0000 C CNN
F 3 "" H 8350 4150 30  0000 C CNN
	1    8350 4150
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:R-RESCUE-mainboard-mainboard-rescue R8
U 1 1 526AE092
P 8350 4250
F 0 "R8" V 8430 4250 40  0000 C CNN
F 1 "R" V 8357 4251 40  0000 C CNN
F 2 "" V 8280 4250 30  0000 C CNN
F 3 "" H 8350 4250 30  0000 C CNN
	1    8350 4250
	0    -1   -1   0   
$EndComp
$Comp
L mainboard-rescue:C-RESCUE-mainboard-mainboard-rescue C2
U 1 1 526B2236
P 1200 6050
F 0 "C2" H 1200 6150 40  0000 L CNN
F 1 ".1u" H 1206 5965 40  0000 L CNN
F 2 "" H 1238 5900 30  0000 C CNN
F 3 "" H 1200 6050 60  0000 C CNN
	1    1200 6050
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:C-RESCUE-mainboard-mainboard-rescue C3
U 1 1 526B2245
P 1550 6050
F 0 "C3" H 1550 6150 40  0000 L CNN
F 1 ".1u" H 1556 5965 40  0000 L CNN
F 2 "" H 1588 5900 30  0000 C CNN
F 3 "" H 1550 6050 60  0000 C CNN
	1    1550 6050
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:C-RESCUE-mainboard-mainboard-rescue C4
U 1 1 526B2254
P 1850 6050
F 0 "C4" H 1850 6150 40  0000 L CNN
F 1 ".1u" H 1856 5965 40  0000 L CNN
F 2 "" H 1888 5900 30  0000 C CNN
F 3 "" H 1850 6050 60  0000 C CNN
	1    1850 6050
	1    0    0    -1  
$EndComp
Text Label 1400 5850 0    60   ~ 0
VCC
$Comp
L mainboard-rescue:GND-power1 #PWR08
U 1 1 526B22AB
P 1550 6300
F 0 "#PWR08" H 1550 6300 30  0001 C CNN
F 1 "GND" H 1550 6230 30  0001 C CNN
F 2 "" H 1550 6300 60  0000 C CNN
F 3 "" H 1550 6300 60  0000 C CNN
	1    1550 6300
	1    0    0    -1  
$EndComp
NoConn ~ 4900 2250
NoConn ~ 4900 2350
NoConn ~ 4900 3000
NoConn ~ 4900 3750
$Comp
L mainboard-rescue:CONN_4-mainboard-rescue P8
U 1 1 526B2C37
P 5550 5050
F 0 "P8" V 5500 5050 50  0000 C CNN
F 1 "SERIAL" V 5600 5050 50  0000 C CNN
F 2 "" H 5550 5050 60  0000 C CNN
F 3 "" H 5550 5050 60  0000 C CNN
	1    5550 5050
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:GND-power1 #PWR09
U 1 1 526B2C94
P 5100 5300
F 0 "#PWR09" H 5100 5300 30  0001 C CNN
F 1 "GND" H 5100 5230 30  0001 C CNN
F 2 "" H 5100 5300 60  0000 C CNN
F 3 "" H 5100 5300 60  0000 C CNN
	1    5100 5300
	1    0    0    -1  
$EndComp
NoConn ~ 8150 5900
Wire Wire Line
	2300 1650 2050 1650
Wire Wire Line
	2050 1950 2300 1950
Connection ~ 2050 1650
Wire Wire Line
	2050 2250 2300 2250
Wire Wire Line
	2300 3850 2100 3850
Wire Wire Line
	2100 3850 2100 3950
Wire Wire Line
	2300 3950 2100 3950
Connection ~ 2100 3950
Wire Wire Line
	1600 5050 2350 5050
Wire Wire Line
	2350 5050 2350 5200
Wire Wire Line
	1600 5150 2100 5150
Wire Wire Line
	1600 4950 2100 4950
Wire Wire Line
	4200 2350 4900 2350
Wire Wire Line
	6700 1900 7600 1900
Wire Wire Line
	6700 1900 6700 2000
Wire Wire Line
	4200 2500 4900 2500
Wire Wire Line
	4200 2600 4900 2600
Wire Wire Line
	4200 2700 4900 2700
Wire Wire Line
	4200 2800 4900 2800
Wire Wire Line
	4200 2900 4900 2900
Wire Wire Line
	4200 3000 4900 3000
Wire Wire Line
	4200 3100 4900 3100
Wire Wire Line
	4200 3250 4900 3250
Wire Wire Line
	4200 3350 4900 3350
Wire Wire Line
	6900 1200 7600 1200
Wire Wire Line
	6900 1300 7600 1300
Wire Wire Line
	6900 1400 7600 1400
Wire Wire Line
	6900 1500 7600 1500
Wire Wire Line
	6900 1600 7600 1600
Wire Wire Line
	6900 2000 7600 2000
Wire Wire Line
	6900 2100 7600 2100
Wire Wire Line
	6900 2200 7600 2200
Wire Wire Line
	6900 2300 7600 2300
Wire Wire Line
	6900 2400 7600 2400
Wire Wire Line
	4200 1750 4900 1750
Wire Wire Line
	4200 1850 4900 1850
Wire Wire Line
	4200 1950 4900 1950
Wire Wire Line
	4200 2050 4900 2050
Wire Wire Line
	4200 2150 4900 2150
Wire Wire Line
	4200 2250 4900 2250
Wire Wire Line
	4200 3950 4900 3950
Wire Wire Line
	4200 3850 4900 3850
Wire Wire Line
	4200 3650 4900 3650
Wire Wire Line
	4200 1650 4900 1650
Wire Wire Line
	4200 3450 4900 3450
Wire Wire Line
	4200 3550 4900 3550
Wire Wire Line
	8100 4450 8350 4450
Wire Wire Line
	8350 4450 8350 4750
Wire Wire Line
	8350 4750 6450 4750
Wire Wire Line
	6450 4750 6450 5050
Wire Wire Line
	6450 5050 6750 5050
Wire Wire Line
	6700 4150 6550 4150
Wire Wire Line
	6550 4150 6550 4250
Wire Wire Line
	6750 5600 6600 5600
Wire Wire Line
	6600 5600 6600 5700
Wire Wire Line
	6750 5300 6200 5300
Wire Wire Line
	6700 3900 6700 3850
Wire Wire Line
	6700 3850 6100 3850
Wire Wire Line
	6700 3600 6100 3600
Wire Wire Line
	6700 3750 6100 3750
Wire Wire Line
	6700 4050 6100 4050
Wire Wire Line
	6750 5200 6200 5200
Wire Wire Line
	6750 5500 6200 5500
Wire Wire Line
	2950 5500 3600 5500
Wire Wire Line
	2950 5500 2950 5600
Wire Wire Line
	3600 5300 3200 5300
Wire Wire Line
	3600 4800 3200 4800
Wire Wire Line
	3600 4900 3200 4900
Wire Wire Line
	3600 5000 3200 5000
Wire Wire Line
	2050 2650 2050 2750
Wire Wire Line
	2050 1950 2050 1650
Wire Wire Line
	4200 3750 4900 3750
Wire Wire Line
	1200 5850 1850 5850
Wire Wire Line
	1200 6250 1550 6250
Wire Wire Line
	1550 6250 1550 6300
Connection ~ 1550 6250
Wire Wire Line
	5200 5200 5100 5200
Wire Wire Line
	5100 5200 5100 5300
Wire Wire Line
	5200 4900 4750 4900
Wire Wire Line
	5200 5000 4750 5000
$Comp
L mainboard-rescue:CONN_5-mainboard-rescue P11
U 1 1 526B2EEA
P 8000 1400
F 0 "P11" V 7950 1400 50  0000 C CNN
F 1 "SWITCH2" V 8050 1400 50  0000 C CNN
F 2 "" H 8000 1400 60  0000 C CNN
F 3 "" H 8000 1400 60  0000 C CNN
	1    8000 1400
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_6-mainboard-rescue P1
U 1 1 526B2F03
P 7950 2150
F 0 "P1" V 7900 2150 60  0000 C CNN
F 1 "SWITCH1" V 8000 2150 60  0000 C CNN
F 2 "" H 7950 2150 60  0000 C CNN
F 3 "" H 7950 2150 60  0000 C CNN
	1    7950 2150
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_3-mainboard-rescue K7
U 1 1 526B300F
P 3950 4900
F 0 "K7" V 3900 4900 50  0000 C CNN
F 1 "COILSA" V 4000 4900 40  0000 C CNN
F 2 "" H 3950 4900 60  0000 C CNN
F 3 "" H 3950 4900 60  0000 C CNN
	1    3950 4900
	1    0    0    1   
$EndComp
Text Label 4550 3000 0    60   ~ 0
COILV
Text Label 4550 3100 0    60   ~ 0
RESET
$Comp
L mainboard-rescue:CONN_6-mainboard-rescue P12
U 1 1 526EA930
P 10350 2250
F 0 "P12" V 10300 2250 60  0000 C CNN
F 1 "ISP" V 10400 2250 60  0000 C CNN
F 2 "" H 10350 2250 60  0000 C CNN
F 3 "" H 10350 2250 60  0000 C CNN
	1    10350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2000 9750 2000
Wire Wire Line
	9400 2100 10000 2100
Wire Wire Line
	10000 2200 9750 2200
Wire Wire Line
	10000 2300 9750 2300
Wire Wire Line
	10000 2400 9750 2400
Wire Wire Line
	10000 2500 9750 2500
Text Label 9750 2000 0    60   ~ 0
RESET
Text Label 9750 2200 0    60   ~ 0
SW5
Text Label 9750 2300 0    60   ~ 0
SW4
Text Label 9750 2400 0    60   ~ 0
SW3
Text Label 9750 2500 0    60   ~ 0
VCC
Wire Wire Line
	9400 2100 9400 2200
$Comp
L mainboard-rescue:GND-power1 #PWR010
U 1 1 526EAB98
P 9400 2200
F 0 "#PWR010" H 9400 2200 30  0001 C CNN
F 1 "GND" H 9400 2130 30  0001 C CNN
F 2 "" H 9400 2200 60  0000 C CNN
F 3 "" H 9400 2200 60  0000 C CNN
	1    9400 2200
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CONN_2-mainboard-rescue P7
U 1 1 526EB0D9
P 3950 5400
F 0 "P7" V 3900 5400 40  0000 C CNN
F 1 "COILSB" V 4000 5400 40  0000 C CNN
F 2 "" H 3950 5400 60  0000 C CNN
F 3 "" H 3950 5400 60  0000 C CNN
	1    3950 5400
	1    0    0    -1  
$EndComp
$Comp
L mainboard-rescue:CP-RESCUE-mainboard-mainboard-rescue C5
U 1 1 526F4214
P 2150 6050
F 0 "C5" H 2200 6150 40  0000 L CNN
F 1 "47u" H 2200 5950 40  0000 L CNN
F 2 "" H 2250 5900 30  0000 C CNN
F 3 "" H 2150 6050 300 0000 C CNN
	1    2150 6050
	1    0    0    -1  
$EndComp
Connection ~ 1850 5850
Connection ~ 1850 6250
Text Label 4750 4900 0    60   ~ 0
RXD
Text Label 4750 5000 0    60   ~ 0
TXD
Wire Wire Line
	2050 1650 2050 1300
Wire Wire Line
	2100 3950 2100 4200
Wire Wire Line
	1550 6250 1850 6250
Wire Wire Line
	1850 5850 2150 5850
Wire Wire Line
	1850 6250 2150 6250
$EndSCHEMATC
