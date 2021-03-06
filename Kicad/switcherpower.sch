EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 2
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
L switcher-rescue:DIODE D103
U 1 1 526B32D0
P 2500 3250
F 0 "D103" H 2500 3350 40  0000 C CNN
F 1 "1N4002" H 2500 3150 40  0000 C CNN
F 2 "" H 2500 3250 60  0000 C CNN
F 3 "" H 2500 3250 60  0000 C CNN
	1    2500 3250
	-1   0    0    1   
$EndComp
$Comp
L switcher-rescue:DIODE D104
U 1 1 526B32DF
P 2900 3250
F 0 "D104" H 2900 3350 40  0000 C CNN
F 1 "1N4002" H 2900 3150 40  0000 C CNN
F 2 "" H 2900 3250 60  0000 C CNN
F 3 "" H 2900 3250 60  0000 C CNN
	1    2900 3250
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:DIODE D101
U 1 1 526B32EE
P 2500 2850
F 0 "D101" H 2500 2950 40  0000 C CNN
F 1 "1N4002" H 2500 2750 40  0000 C CNN
F 2 "" H 2500 2850 60  0000 C CNN
F 3 "" H 2500 2850 60  0000 C CNN
	1    2500 2850
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:DIODE D102
U 1 1 526B32FD
P 2900 2850
F 0 "D102" H 2900 2950 40  0000 C CNN
F 1 "1N4002" H 2900 2750 40  0000 C CNN
F 2 "" H 2900 2850 60  0000 C CNN
F 3 "" H 2900 2850 60  0000 C CNN
	1    2900 2850
	-1   0    0    1   
$EndComp
$Comp
L switcher-rescue:GND #PWR042
U 1 1 526B33BB
P 2700 3500
F 0 "#PWR042" H 2700 3500 30  0001 C CNN
F 1 "GND" H 2700 3430 30  0001 C CNN
F 2 "" H 2700 3500 60  0000 C CNN
F 3 "" H 2700 3500 60  0000 C CNN
	1    2700 3500
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:R R101
U 1 1 526B33D9
P 3850 2850
F 0 "R101" V 3930 2850 40  0000 C CNN
F 1 "24 10W" V 3857 2851 40  0000 C CNN
F 2 "" V 3780 2850 30  0000 C CNN
F 3 "" H 3850 2850 30  0000 C CNN
	1    3850 2850
	0    -1   -1   0   
$EndComp
$Comp
L switcher-rescue:R R102
U 1 1 526B33FC
P 3850 2500
F 0 "R102" V 3930 2500 40  0000 C CNN
F 1 "2.2k .5W" V 3857 2501 40  0000 C CNN
F 2 "" V 3780 2500 30  0000 C CNN
F 3 "" H 3850 2500 30  0000 C CNN
	1    3850 2500
	0    -1   -1   0   
$EndComp
$Comp
L switcher-rescue:DIODE D105
U 1 1 526B3477
P 5350 2850
F 0 "D105" H 5350 2950 40  0000 C CNN
F 1 "1N5400" H 5350 2750 40  0000 C CNN
F 2 "" H 5350 2850 60  0000 C CNN
F 3 "" H 5350 2850 60  0000 C CNN
	1    5350 2850
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:CAPAPOL C101
U 1 1 526B34EC
P 4650 3250
F 0 "C101" H 4700 3350 40  0000 L CNN
F 1 "4700u" H 4700 3150 40  0000 L CNN
F 2 "" H 4750 3100 30  0000 C CNN
F 3 "" H 4650 3250 300 0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:GND #PWR043
U 1 1 526B352C
P 4650 3800
F 0 "#PWR043" H 4650 3800 30  0001 C CNN
F 1 "GND" H 4650 3730 30  0001 C CNN
F 2 "" H 4650 3800 60  0000 C CNN
F 3 "" H 4650 3800 60  0000 C CNN
	1    4650 3800
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:R R103
U 1 1 526B354D
P 5000 3100
F 0 "R103" V 5080 3100 40  0000 C CNN
F 1 "200k" V 5007 3101 40  0000 C CNN
F 2 "" V 4930 3100 30  0000 C CNN
F 3 "" H 5000 3100 30  0000 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:R R104
U 1 1 526B355C
P 5000 3600
F 0 "R104" V 5080 3600 40  0000 C CNN
F 1 "12k" V 5007 3601 40  0000 C CNN
F 2 "" V 4930 3600 30  0000 C CNN
F 3 "" H 5000 3600 30  0000 C CNN
	1    5000 3600
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:GND #PWR044
U 1 1 526B35A5
P 5000 3850
F 0 "#PWR044" H 5000 3850 30  0001 C CNN
F 1 "GND" H 5000 3780 30  0001 C CNN
F 2 "" H 5000 3850 60  0000 C CNN
F 3 "" H 5000 3850 60  0000 C CNN
	1    5000 3850
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:DIODE D106
U 1 1 526B3741
P 3750 4400
F 0 "D106" H 3750 4500 40  0000 C CNN
F 1 "1N4002" H 3750 4300 40  0000 C CNN
F 2 "" H 3750 4400 60  0000 C CNN
F 3 "" H 3750 4400 60  0000 C CNN
	1    3750 4400
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:CAPAPOL C102
U 1 1 526B375A
P 4750 4800
F 0 "C102" H 4800 4900 40  0000 L CNN
F 1 "470u" H 4800 4700 40  0000 L CNN
F 2 "" H 4850 4650 30  0000 C CNN
F 3 "" H 4750 4800 300 0000 C CNN
	1    4750 4800
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:GND #PWR045
U 1 1 526B37F4
P 4750 5150
F 0 "#PWR045" H 4750 5150 30  0001 C CNN
F 1 "GND" H 4750 5080 30  0001 C CNN
F 2 "" H 4750 5150 60  0000 C CNN
F 3 "" H 4750 5150 60  0000 C CNN
	1    4750 5150
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:7805 U101
U 1 1 526B37FC
P 5300 4450
F 0 "U101" H 5450 4254 60  0000 C CNN
F 1 "7805" H 5300 4650 60  0000 C CNN
F 2 "" H 5300 4450 60  0000 C CNN
F 3 "" H 5300 4450 60  0000 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:GND #PWR046
U 1 1 526B384B
P 5300 5150
F 0 "#PWR046" H 5300 5150 30  0001 C CNN
F 1 "GND" H 5300 5080 30  0001 C CNN
F 2 "" H 5300 5150 60  0000 C CNN
F 3 "" H 5300 5150 60  0000 C CNN
	1    5300 5150
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:CAPAPOL C103
U 1 1 526B38F6
P 5700 4800
F 0 "C103" H 5750 4900 40  0000 L CNN
F 1 "47u" H 5750 4700 40  0000 L CNN
F 2 "" H 5800 4650 30  0000 C CNN
F 3 "" H 5700 4800 300 0000 C CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:C C104
U 1 1 526B390F
P 6200 4800
F 0 "C104" H 6200 4900 40  0000 L CNN
F 1 ".1u" H 6206 4715 40  0000 L CNN
F 2 "" H 6238 4650 30  0000 C CNN
F 3 "" H 6200 4800 60  0000 C CNN
	1    6200 4800
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:GND #PWR047
U 1 1 526B39F1
P 5700 5150
F 0 "#PWR047" H 5700 5150 30  0001 C CNN
F 1 "GND" H 5700 5080 30  0001 C CNN
F 2 "" H 5700 5150 60  0000 C CNN
F 3 "" H 5700 5150 60  0000 C CNN
	1    5700 5150
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:GND #PWR048
U 1 1 526B39F7
P 6200 5150
F 0 "#PWR048" H 6200 5150 30  0001 C CNN
F 1 "GND" H 6200 5080 30  0001 C CNN
F 2 "" H 6200 5150 60  0000 C CNN
F 3 "" H 6200 5150 60  0000 C CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:MJE13003 Q101
U 1 1 526DB574
P 4400 2750
F 0 "Q101" H 4400 2600 40  0000 R CNN
F 1 "MJE3055T" H 4400 2900 40  0000 R CNN
F 2 "TO225" H 4280 2850 29  0001 C CNN
F 3 "" H 4400 2750 60  0000 C CNN
	1    4400 2750
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 2850 2300 3250
Wire Wire Line
	3100 2850 3100 3250
Wire Wire Line
	1800 2850 2300 2850
Wire Wire Line
	2700 3250 2700 3500
Wire Wire Line
	2700 2850 2700 2500
Wire Wire Line
	1800 3050 3100 3050
Connection ~ 3100 3050
Wire Wire Line
	2700 2500 3600 2500
Wire Wire Line
	3600 2850 3350 2850
Wire Wire Line
	3350 2500 3350 4400
Connection ~ 3350 2500
Wire Wire Line
	4100 2850 4200 2850
Wire Wire Line
	4100 2500 5550 2500
Wire Wire Line
	4400 2500 4400 2550
Wire Wire Line
	4600 2850 5150 2850
Connection ~ 4400 2500
Wire Wire Line
	5550 2850 6300 2850
Wire Wire Line
	4650 3450 4650 3800
Connection ~ 2700 2850
Connection ~ 2700 3250
Wire Wire Line
	5000 3350 6300 3350
Connection ~ 5550 2850
Wire Wire Line
	4650 3050 4650 2850
Connection ~ 4650 2850
Connection ~ 3350 2850
Wire Wire Line
	3950 4400 4900 4400
Wire Wire Line
	4750 5000 4750 5150
Connection ~ 4750 4400
Wire Wire Line
	5300 4700 5300 5150
Wire Wire Line
	4750 4000 7600 4000
Wire Wire Line
	5700 4400 6900 4400
Wire Wire Line
	5700 4600 5700 4400
Connection ~ 5700 4400
Wire Wire Line
	5700 5000 5700 5150
Wire Wire Line
	6200 5000 6200 5150
Wire Wire Line
	6200 4600 6200 4400
Connection ~ 6200 4400
Wire Wire Line
	3350 4400 3550 4400
Wire Wire Line
	5550 2500 5550 2850
Connection ~ 5000 3350
Connection ~ 5000 2850
Wire Wire Line
	4750 4000 4750 4600
$Comp
L switcher-rescue:C C105
U 1 1 527045D8
P 4350 4800
F 0 "C105" H 4350 4900 40  0000 L CNN
F 1 ".33u" H 4356 4715 40  0000 L CNN
F 2 "" H 4388 4650 30  0000 C CNN
F 3 "" H 4350 4800 60  0000 C CNN
	1    4350 4800
	1    0    0    -1  
$EndComp
$Comp
L switcher-rescue:GND #PWR049
U 1 1 52704600
P 4350 5150
F 0 "#PWR049" H 4350 5150 30  0001 C CNN
F 1 "GND" H 4350 5080 30  0001 C CNN
F 2 "" H 4350 5150 60  0000 C CNN
F 3 "" H 4350 5150 60  0000 C CNN
	1    4350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5000 4350 5150
Wire Wire Line
	4350 4600 4350 4400
Connection ~ 4350 4400
Text HLabel 6300 2850 2    60   Output ~ 0
COILPULSE
Text HLabel 6300 3350 2    60   Output ~ 0
COILV
Text HLabel 6900 4400 2    60   Output ~ 0
VCC
Text HLabel 1800 2850 0    60   Input ~ 0
VAC1
Text HLabel 1800 3050 0    60   Input ~ 0
VAC 2
Wire Wire Line
	7800 4000 8300 4000
Wire Wire Line
	7700 4000 7700 4400
$Comp
L switcher-rescue:GND #PWR050
U 1 1 52FAFB1B
P 7700 4400
F 0 "#PWR050" H 7700 4400 30  0001 C CNN
F 1 "GND" H 7700 4330 30  0001 C CNN
F 2 "" H 7700 4400 60  0000 C CNN
F 3 "" H 7700 4400 60  0000 C CNN
	1    7700 4400
	1    0    0    -1  
$EndComp
Text HLabel 8300 4000 2    60   Output ~ 0
LEDPWR
$Comp
L switcher-rescue:CONN_4 P101
U 1 1 53065456
P 7650 3650
F 0 "P101" V 7600 3650 50  0000 C CNN
F 1 "LEDREG" V 7700 3650 50  0000 C CNN
F 2 "" H 7650 3650 60  0000 C CNN
F 3 "" H 7650 3650 60  0000 C CNN
	1    7650 3650
	0    -1   -1   0   
$EndComp
Connection ~ 7500 4000
$EndSCHEMATC
