EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Varistor RV1
U 1 1 5C4A0C92
P 1800 6800
F 0 "RV1" H 1679 6754 50  0000 R CNN
F 1 "Varistor" H 1679 6845 50  0000 R CNN
F 2 "Varistor:RV_Disc_D12mm_W3.9mm_P7.5mm" V 1730 6800 50  0001 C CNN
F 3 "~" H 1800 6800 50  0001 C CNN
	1    1800 6800
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5C4A0D40
P 2400 6650
F 0 "F1" V 2203 6650 50  0000 C CNN
F 1 "Fuse" V 2294 6650 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 2330 6650 50  0001 C CNN
F 3 "~" H 2400 6650 50  0001 C CNN
	1    2400 6650
	0    1    1    0   
$EndComp
$Comp
L rollershutter-light-control-rescue:JS5MN-KT-js5mn-kt K3
U 1 1 5C4A0F53
P 9450 4950
F 0 "K3" H 9880 4996 50  0000 L CNN
F 1 "JS5MN-KT" H 9880 4905 50  0000 L CNN
F 2 "js5mn-kt:js5mn-kt" H 10720 4920 50  0001 C CNN
F 3 "" H 9450 4950 50  0001 C CNN
	1    9450 4950
	1    0    0    -1  
$EndComp
$Comp
L rollershutter-light-control-rescue:JS5MN-KT-js5mn-kt K2
U 1 1 5C4A0FCB
P 9450 3950
F 0 "K2" H 9880 3996 50  0000 L CNN
F 1 "JS5MN-KT" H 9880 3905 50  0000 L CNN
F 2 "js5mn-kt:js5mn-kt" H 10720 3920 50  0001 C CNN
F 3 "" H 9450 3950 50  0001 C CNN
	1    9450 3950
	1    0    0    -1  
$EndComp
$Comp
L rollershutter-light-control-rescue:JS5MN-KT-js5mn-kt K1
U 1 1 5C4A1005
P 9900 2350
F 0 "K1" H 10330 2396 50  0000 L CNN
F 1 "JS5MN-KT" H 10330 2305 50  0000 L CNN
F 2 "js5mn-kt:js5mn-kt" H 11170 2320 50  0001 C CNN
F 3 "" H 9900 2350 50  0001 C CNN
	1    9900 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5C4A1405
P 10800 650
F 0 "J3" H 10879 642 50  0000 L CNN
F 1 "R1" H 10879 551 50  0000 L CNN
F 2 "RNDs:RND_Schraubklemme_2pol" H 10800 650 50  0001 C CNN
F 3 "~" H 10800 650 50  0001 C CNN
	1    10800 650 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003A U2
U 1 1 5C4A16CD
P 5150 4100
F 0 "U2" H 5150 4767 50  0000 C CNN
F 1 "ULN2003A" H 5150 4676 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5200 3550 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5250 3900 50  0001 C CNN
	1    5150 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5C4A177C
P 5750 3700
F 0 "#PWR08" H 5750 3550 50  0001 C CNN
F 1 "+5V" H 5765 3873 50  0000 C CNN
F 2 "" H 5750 3700 50  0001 C CNN
F 3 "" H 5750 3700 50  0001 C CNN
	1    5750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3700 5550 3700
$Comp
L power:GND #PWR07
U 1 1 5C4A17FE
P 5150 4900
F 0 "#PWR07" H 5150 4650 50  0001 C CNN
F 1 "GND" H 5155 4727 50  0000 C CNN
F 2 "" H 5150 4900 50  0001 C CNN
F 3 "" H 5150 4900 50  0001 C CNN
	1    5150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4700 5150 4900
$Comp
L power:+5V #PWR010
U 1 1 5C4A1BA2
P 9250 3500
F 0 "#PWR010" H 9250 3350 50  0001 C CNN
F 1 "+5V" H 9265 3673 50  0000 C CNN
F 2 "" H 9250 3500 50  0001 C CNN
F 3 "" H 9250 3500 50  0001 C CNN
	1    9250 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5C4A1BEC
P 9250 4550
F 0 "#PWR011" H 9250 4400 50  0001 C CNN
F 1 "+5V" H 9265 4723 50  0000 C CNN
F 2 "" H 9250 4550 50  0001 C CNN
F 3 "" H 9250 4550 50  0001 C CNN
	1    9250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4550 9250 4650
Wire Wire Line
	9250 3650 9250 3500
$Comp
L rollershutter-light-control-rescue:FINDER-36.11-finder-36 K4
U 1 1 5C4A1EBD
P 10000 1250
F 0 "K4" H 10430 1296 50  0000 L CNN
F 1 "FINDER-36.11" H 10430 1205 50  0000 L CNN
F 2 "finder-36:Finder 36.11.9" H 11140 1210 50  0001 C CNN
F 3 "" H 10000 1250 50  0001 C CNN
	1    10000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5C4A2269
P 9700 1950
F 0 "#PWR09" H 9700 1800 50  0001 C CNN
F 1 "+5V" H 9715 2123 50  0000 C CNN
F 2 "" H 9700 1950 50  0001 C CNN
F 3 "" H 9700 1950 50  0001 C CNN
	1    9700 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5C4A229C
P 9800 800
F 0 "#PWR012" H 9800 650 50  0001 C CNN
F 1 "+5V" H 9815 973 50  0000 C CNN
F 2 "" H 9800 800 50  0001 C CNN
F 3 "" H 9800 800 50  0001 C CNN
	1    9800 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 800  9800 950 
Wire Wire Line
	9700 1950 9700 2050
Wire Wire Line
	10600 750  10300 750 
Wire Wire Line
	10300 750  10300 950 
Wire Wire Line
	10600 650  10100 650 
Wire Wire Line
	10100 650  10100 950 
Wire Wire Line
	10200 2050 10200 1550
Text GLabel 10100 2900 3    50   Input ~ 0
L
Text GLabel 9650 4350 3    50   Input ~ 0
L
Text GLabel 9650 5350 3    50   Input ~ 0
L
Wire Wire Line
	9650 4350 9650 4250
Wire Wire Line
	9650 5350 9650 5250
$Comp
L 74xx:74HC595 U1
U 1 1 5C4A5381
P 3250 2600
F 0 "U1" H 3250 3378 50  0000 C CNN
F 1 "74HC595" H 3250 3287 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3250 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3250 2600 50  0001 C CNN
	1    3250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5C4A8122
P 3250 1450
F 0 "#PWR05" H 3250 1300 50  0001 C CNN
F 1 "+3.3V" H 3265 1623 50  0000 C CNN
F 2 "" H 3250 1450 50  0001 C CNN
F 3 "" H 3250 1450 50  0001 C CNN
	1    3250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C4A8784
P 3250 3600
F 0 "#PWR06" H 3250 3350 50  0001 C CNN
F 1 "GND" H 3255 3427 50  0000 C CNN
F 2 "" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3300 3250 3600
$Comp
L power:+3.3V #PWR01
U 1 1 5C4A8F5E
P 1350 1750
F 0 "#PWR01" H 1350 1600 50  0001 C CNN
F 1 "+3.3V" H 1365 1923 50  0000 C CNN
F 2 "" H 1350 1750 50  0001 C CNN
F 3 "" H 1350 1750 50  0001 C CNN
	1    1350 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5C4A8F8D
P 1550 1850
F 0 "#PWR02" H 1550 1700 50  0001 C CNN
F 1 "+5V" H 1565 2023 50  0000 C CNN
F 2 "" H 1550 1850 50  0001 C CNN
F 3 "" H 1550 1850 50  0001 C CNN
	1    1550 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C4A8FE0
P 1750 1950
F 0 "#PWR03" H 1750 1700 50  0001 C CNN
F 1 "GND" H 1755 1777 50  0000 C CNN
F 2 "" H 1750 1950 50  0001 C CNN
F 3 "" H 1750 1950 50  0001 C CNN
	1    1750 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5C4AE9C6
P 2650 2950
F 0 "R1" H 2720 2996 50  0000 L CNN
F 1 "10k" H 2720 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2580 2950 50  0001 C CNN
F 3 "~" H 2650 2950 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2800 2650 2800
$Comp
L power:+3.3V #PWR04
U 1 1 5C4B098C
P 2650 3450
F 0 "#PWR04" H 2650 3300 50  0001 C CNN
F 1 "+3.3V" H 2665 3623 50  0000 C CNN
F 2 "" H 2650 3450 50  0001 C CNN
F 3 "" H 2650 3450 50  0001 C CNN
	1    2650 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3100 2650 3450
Text GLabel 1800 6500 1    50   Input ~ 0
L
Wire Wire Line
	1800 6650 1800 6500
Connection ~ 1800 6650
Wire Wire Line
	1800 6650 2250 6650
$Comp
L power:GND #PWR014
U 1 1 5C4BD951
P 4000 6850
F 0 "#PWR014" H 4000 6600 50  0001 C CNN
F 1 "GND" H 4005 6677 50  0000 C CNN
F 2 "" H 4000 6850 50  0001 C CNN
F 3 "" H 4000 6850 50  0001 C CNN
	1    4000 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5C4BD9CC
P 4000 6650
F 0 "#PWR013" H 4000 6500 50  0001 C CNN
F 1 "+5V" H 4015 6823 50  0000 C CNN
F 2 "" H 4000 6650 50  0001 C CNN
F 3 "" H 4000 6650 50  0001 C CNN
	1    4000 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5C538378
P 2350 2500
F 0 "#PWR015" H 2350 2350 50  0001 C CNN
F 1 "+3.3V" H 2365 2673 50  0000 C CNN
F 2 "" H 2350 2500 50  0001 C CNN
F 3 "" H 2350 2500 50  0001 C CNN
	1    2350 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2500 2350 2500
$Comp
L Connector:Conn_01x07_Male J2
U 1 1 5C540D70
P 1050 2600
F 0 "J2" H 1156 3078 50  0000 C CNN
F 1 "UPLINK" H 1156 2987 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 1050 2600 50  0001 C CNN
F 3 "~" H 1050 2600 50  0001 C CNN
	1    1050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2800 2350 2800
Wire Wire Line
	2350 2800 2350 2900
Wire Wire Line
	2350 2900 1800 2900
Connection ~ 2650 2800
Wire Wire Line
	2850 2700 2550 2700
Wire Wire Line
	2550 2700 2550 2750
Wire Wire Line
	2550 2750 2300 2750
Wire Wire Line
	2300 2750 2300 2800
Wire Wire Line
	2300 2800 1850 2800
Wire Wire Line
	2850 2400 2150 2400
Wire Wire Line
	2150 2400 2150 2700
Wire Wire Line
	2150 2700 1250 2700
Wire Wire Line
	2850 2200 2100 2200
Wire Wire Line
	2100 2200 2100 2600
Wire Wire Line
	2100 2600 1250 2600
Wire Wire Line
	1250 2300 1350 2300
Wire Wire Line
	1350 2300 1350 1750
Wire Wire Line
	1250 2400 1550 2400
Wire Wire Line
	1550 2400 1550 1850
Wire Wire Line
	1250 2500 1750 2500
Wire Wire Line
	1750 2500 1750 1950
$Comp
L Device:C C1
U 1 1 5C56DF9A
P 3400 1700
F 0 "C1" V 3148 1700 50  0000 C CNN
F 1 "100nf" V 3239 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3438 1550 50  0001 C CNN
F 3 "~" H 3400 1700 50  0001 C CNN
	1    3400 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1450 3250 1700
Wire Wire Line
	3250 1700 3250 2000
Connection ~ 3250 1700
$Comp
L power:GND #PWR016
U 1 1 5C571A7F
P 3650 1700
F 0 "#PWR016" H 3650 1450 50  0001 C CNN
F 1 "GND" H 3655 1527 50  0000 C CNN
F 2 "" H 3650 1700 50  0001 C CNN
F 3 "" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1700 3550 1700
$Comp
L rollershutter-light-control-rescue:JS5MN-KT-js5mn-kt K9
U 1 1 60836F84
P 9350 6000
F 0 "K9" H 9780 6046 50  0000 L CNN
F 1 "JS5MN-KT" H 9780 5955 50  0000 L CNN
F 2 "js5mn-kt:js5mn-kt" H 10620 5970 50  0001 C CNN
F 3 "" H 9350 6000 50  0001 C CNN
	1    9350 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 60837305
P 9150 5600
F 0 "#PWR021" H 9150 5450 50  0001 C CNN
F 1 "+5V" H 9165 5773 50  0000 C CNN
F 2 "" H 9150 5600 50  0001 C CNN
F 3 "" H 9150 5600 50  0001 C CNN
	1    9150 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5600 9150 5700
Text GLabel 9550 6400 3    50   Input ~ 0
L
Wire Wire Line
	9550 6400 9550 6300
$Comp
L rollershutter-light-control-rescue:JS5MN-KT-js5mn-kt K7
U 1 1 60846DAB
P 8250 2350
F 0 "K7" H 8680 2396 50  0000 L CNN
F 1 "JS5MN-KT" H 8680 2305 50  0000 L CNN
F 2 "js5mn-kt:js5mn-kt" H 9520 2320 50  0001 C CNN
F 3 "" H 8250 2350 50  0001 C CNN
	1    8250 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 60847169
P 9150 650
F 0 "J5" H 9229 642 50  0000 L CNN
F 1 "R2" H 9229 551 50  0000 L CNN
F 2 "RNDs:RND_Schraubklemme_2pol" H 9150 650 50  0001 C CNN
F 3 "~" H 9150 650 50  0001 C CNN
	1    9150 650 
	1    0    0    -1  
$EndComp
$Comp
L rollershutter-light-control-rescue:FINDER-36.11-finder-36 K8
U 1 1 6084717E
P 8350 1250
F 0 "K8" H 8780 1296 50  0000 L CNN
F 1 "FINDER-36.11" H 8780 1205 50  0000 L CNN
F 2 "finder-36:Finder 36.11.9" H 9490 1210 50  0001 C CNN
F 3 "" H 8350 1250 50  0001 C CNN
	1    8350 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 60847188
P 8050 1950
F 0 "#PWR019" H 8050 1800 50  0001 C CNN
F 1 "+5V" H 8065 2123 50  0000 C CNN
F 2 "" H 8050 1950 50  0001 C CNN
F 3 "" H 8050 1950 50  0001 C CNN
	1    8050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 60847192
P 8150 800
F 0 "#PWR020" H 8150 650 50  0001 C CNN
F 1 "+5V" H 8165 973 50  0000 C CNN
F 2 "" H 8150 800 50  0001 C CNN
F 3 "" H 8150 800 50  0001 C CNN
	1    8150 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 800  8150 950 
Wire Wire Line
	8050 1950 8050 2050
Wire Wire Line
	8950 750  8650 750 
Wire Wire Line
	8650 750  8650 950 
Wire Wire Line
	8950 650  8450 650 
Wire Wire Line
	8450 650  8450 950 
Wire Wire Line
	8550 2050 8550 1550
Text GLabel 8450 2800 3    50   Input ~ 0
L
Wire Wire Line
	8450 2800 8450 2650
Wire Wire Line
	10100 2650 10100 2900
$Comp
L rollershutter-light-control-rescue:JS5MN-KT-js5mn-kt K5
U 1 1 60854EF1
P 6700 2350
F 0 "K5" H 7130 2396 50  0000 L CNN
F 1 "JS5MN-KT" H 7130 2305 50  0000 L CNN
F 2 "js5mn-kt:js5mn-kt" H 7970 2320 50  0001 C CNN
F 3 "" H 6700 2350 50  0001 C CNN
	1    6700 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60854EFB
P 7600 650
F 0 "J4" H 7679 642 50  0000 L CNN
F 1 "R3" H 7679 551 50  0000 L CNN
F 2 "RNDs:RND_Schraubklemme_2pol" H 7600 650 50  0001 C CNN
F 3 "~" H 7600 650 50  0001 C CNN
	1    7600 650 
	1    0    0    -1  
$EndComp
$Comp
L rollershutter-light-control-rescue:FINDER-36.11-finder-36 K6
U 1 1 60854F05
P 6800 1250
F 0 "K6" H 7230 1296 50  0000 L CNN
F 1 "FINDER-36.11" H 7230 1205 50  0000 L CNN
F 2 "finder-36:Finder 36.11.9" H 7940 1210 50  0001 C CNN
F 3 "" H 6800 1250 50  0001 C CNN
	1    6800 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 60854F0F
P 6500 1950
F 0 "#PWR017" H 6500 1800 50  0001 C CNN
F 1 "+5V" H 6515 2123 50  0000 C CNN
F 2 "" H 6500 1950 50  0001 C CNN
F 3 "" H 6500 1950 50  0001 C CNN
	1    6500 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 60854F19
P 6600 800
F 0 "#PWR018" H 6600 650 50  0001 C CNN
F 1 "+5V" H 6615 973 50  0000 C CNN
F 2 "" H 6600 800 50  0001 C CNN
F 3 "" H 6600 800 50  0001 C CNN
	1    6600 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 800  6600 950 
Wire Wire Line
	6500 1950 6500 2050
Wire Wire Line
	7400 750  7100 750 
Wire Wire Line
	7100 750  7100 950 
Wire Wire Line
	7400 650  6900 650 
Wire Wire Line
	6900 650  6900 950 
Wire Wire Line
	7000 2050 7000 1550
Text GLabel 6900 2800 3    50   Input ~ 0
L
Wire Wire Line
	6900 2800 6900 2650
Wire Wire Line
	5550 3900 8800 3900
Wire Wire Line
	8800 3900 8800 4250
Wire Wire Line
	8800 4250 9250 4250
Wire Wire Line
	5550 4000 8750 4000
Wire Wire Line
	8750 4000 8750 5250
Wire Wire Line
	8750 5250 9250 5250
Wire Wire Line
	5550 4100 8650 4100
Wire Wire Line
	8650 4100 8650 6300
Wire Wire Line
	8650 6300 9150 6300
Wire Wire Line
	5550 4200 7850 4200
Wire Wire Line
	7850 4200 7850 3200
Wire Wire Line
	7850 3200 9700 3200
Wire Wire Line
	9700 3200 9700 2650
Wire Wire Line
	9800 1550 9450 1550
Wire Wire Line
	9450 1550 9450 3150
Wire Wire Line
	9450 3150 7800 3150
Wire Wire Line
	7800 3150 7800 4300
Wire Wire Line
	7800 4300 5550 4300
Wire Wire Line
	5550 4400 7750 4400
Wire Wire Line
	7750 4400 7750 3050
Wire Wire Line
	7750 3050 8050 3050
Wire Wire Line
	8050 3050 8050 2650
Wire Wire Line
	5550 4500 7700 4500
Wire Wire Line
	7700 1650 8150 1650
Wire Wire Line
	8150 1650 8150 1550
Wire Wire Line
	7700 1650 7700 4500
$Comp
L Transistor_Array:ULN2003A U4
U 1 1 608897EF
P 5150 2250
F 0 "U4" H 5150 2917 50  0000 C CNN
F 1 "ULN2003A" H 5150 2826 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5200 1700 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5250 2050 50  0001 C CNN
	1    5150 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 60889D0B
P 5750 1850
F 0 "#PWR027" H 5750 1700 50  0001 C CNN
F 1 "+5V" H 5765 2023 50  0000 C CNN
F 2 "" H 5750 1850 50  0001 C CNN
F 3 "" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1850 5550 1850
$Comp
L power:GND #PWR026
U 1 1 60889D16
P 5150 3050
F 0 "#PWR026" H 5150 2800 50  0001 C CNN
F 1 "GND" H 5155 2877 50  0000 C CNN
F 2 "" H 5150 3050 50  0001 C CNN
F 3 "" H 5150 3050 50  0001 C CNN
	1    5150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2850 5150 3050
Wire Wire Line
	5550 2050 6250 2050
Wire Wire Line
	6250 2050 6250 2650
Wire Wire Line
	6250 2650 6500 2650
Wire Wire Line
	5550 2150 6150 2150
Wire Wire Line
	6150 2150 6150 1550
Wire Wire Line
	6150 1550 6600 1550
NoConn ~ 5550 2250
NoConn ~ 5550 2350
NoConn ~ 5550 2450
NoConn ~ 5550 2550
NoConn ~ 5550 2650
Wire Wire Line
	3650 2200 4400 2200
Wire Wire Line
	4400 2200 4400 3900
Wire Wire Line
	4400 3900 4750 3900
Wire Wire Line
	3650 2300 4350 2300
Wire Wire Line
	4350 2300 4350 4000
Wire Wire Line
	4350 4000 4750 4000
Wire Wire Line
	3650 2400 4300 2400
Wire Wire Line
	4300 2400 4300 4100
Wire Wire Line
	4300 4100 4750 4100
Wire Wire Line
	3650 2500 4250 2500
Wire Wire Line
	4250 2500 4250 4200
Wire Wire Line
	4250 4200 4750 4200
Wire Wire Line
	3650 2600 4200 2600
Wire Wire Line
	4200 2600 4200 4300
Wire Wire Line
	4200 4300 4750 4300
Wire Wire Line
	3650 2700 4150 2700
Wire Wire Line
	4150 2700 4150 4400
Wire Wire Line
	4150 4400 4750 4400
Wire Wire Line
	3650 2800 4100 2800
Wire Wire Line
	4100 2800 4100 4500
Wire Wire Line
	4100 4500 4750 4500
NoConn ~ 4750 2250
NoConn ~ 4750 2350
NoConn ~ 4750 2450
NoConn ~ 4750 2550
NoConn ~ 4750 2650
$Comp
L 74xx:74HC595 U3
U 1 1 608EF323
P 2950 5100
F 0 "U3" H 2950 5878 50  0000 C CNN
F 1 "74HC595" H 2950 5787 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2950 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2950 5100 50  0001 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 608EF88F
P 2950 3950
F 0 "#PWR023" H 2950 3800 50  0001 C CNN
F 1 "+3.3V" H 2965 4123 50  0000 C CNN
F 2 "" H 2950 3950 50  0001 C CNN
F 3 "" H 2950 3950 50  0001 C CNN
	1    2950 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 608EF899
P 2950 6100
F 0 "#PWR024" H 2950 5850 50  0001 C CNN
F 1 "GND" H 2955 5927 50  0000 C CNN
F 2 "" H 2950 6100 50  0001 C CNN
F 3 "" H 2950 6100 50  0001 C CNN
	1    2950 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5800 2950 6100
$Comp
L power:+3.3V #PWR022
U 1 1 608EF8BA
P 2050 5000
F 0 "#PWR022" H 2050 4850 50  0001 C CNN
F 1 "+3.3V" H 2065 5173 50  0000 C CNN
F 2 "" H 2050 5000 50  0001 C CNN
F 3 "" H 2050 5000 50  0001 C CNN
	1    2050 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 5000 2050 5000
$Comp
L Device:C C2
U 1 1 608EF8D0
P 3100 4200
F 0 "C2" V 2848 4200 50  0000 C CNN
F 1 "100nf" V 2939 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3138 4050 50  0001 C CNN
F 3 "~" H 3100 4200 50  0001 C CNN
	1    3100 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3950 2950 4200
Wire Wire Line
	2950 4200 2950 4500
Connection ~ 2950 4200
$Comp
L power:GND #PWR025
U 1 1 608EF8DD
P 3350 4200
F 0 "#PWR025" H 3350 3950 50  0001 C CNN
F 1 "GND" H 3355 4027 50  0000 C CNN
F 2 "" H 3350 4200 50  0001 C CNN
F 3 "" H 3350 4200 50  0001 C CNN
	1    3350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4200 3250 4200
NoConn ~ 3350 5600
Wire Wire Line
	3650 3100 3700 3100
Wire Wire Line
	3700 3100 3700 4000
Wire Wire Line
	3700 4000 2450 4000
Wire Wire Line
	2450 4000 2450 4700
Wire Wire Line
	2450 4700 2550 4700
Wire Wire Line
	2150 4900 2150 2700
Wire Wire Line
	2150 4900 2550 4900
Connection ~ 2150 2700
Wire Wire Line
	2550 5200 1850 5200
Wire Wire Line
	1850 5200 1850 2800
Connection ~ 1850 2800
Wire Wire Line
	1850 2800 1250 2800
Wire Wire Line
	2550 5300 1800 5300
Wire Wire Line
	1800 5300 1800 2900
Connection ~ 1800 2900
Wire Wire Line
	1800 2900 1250 2900
Wire Wire Line
	3650 2900 3750 2900
Wire Wire Line
	3750 2900 3750 2050
Wire Wire Line
	3750 2050 4750 2050
Wire Wire Line
	4750 2150 3900 2150
Wire Wire Line
	3900 2150 3900 4700
Wire Wire Line
	3900 4700 3350 4700
NoConn ~ 3350 4800
NoConn ~ 3350 4900
NoConn ~ 3350 5000
NoConn ~ 3350 5100
NoConn ~ 3350 5200
NoConn ~ 3350 5300
NoConn ~ 3350 5400
NoConn ~ -3850 3050
$Comp
L Converter_ACDC:IRM-10-5 PS1
U 1 1 609BBEA5
P 3300 6750
F 0 "PS1" H 3300 7117 50  0000 C CNN
F 1 "IRM-10-5" H 3300 7026 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_MeanWell_IRM-10-xx_THT" H 3300 6400 50  0001 C CNN
F 3 "https://www.meanwell.com/Upload/PDF/IRM-10/IRM-10-SPEC.PDF" H 3300 6350 50  0001 C CNN
	1    3300 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6650 3700 6650
Wire Wire Line
	3700 6850 4000 6850
Wire Wire Line
	2550 6650 2900 6650
Wire Wire Line
	2900 6850 2500 6850
Wire Wire Line
	2500 6850 2500 6950
Wire Wire Line
	2500 6950 1800 6950
$Comp
L Connector:Screw_Terminal_01x08 J1
U 1 1 60A12F99
P 1150 7050
F 0 "J1" H 1068 6425 50  0000 C CNN
F 1 "Screw_Terminal_01x08" H 1068 6516 50  0000 C CNN
F 2 "RNDs:RND_Schraubklemme_8pol" H 1150 7050 50  0001 C CNN
F 3 "~" H 1150 7050 50  0001 C CNN
	1    1150 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 6650 1350 6650
Wire Wire Line
	1350 6750 1350 6850
Connection ~ 1350 6850
Wire Wire Line
	1350 6850 1350 6950
Connection ~ 1350 6950
Wire Wire Line
	1350 6950 1350 7050
Connection ~ 1350 7050
Wire Wire Line
	1350 7050 1350 7150
Connection ~ 1350 7150
Wire Wire Line
	1350 7150 1350 7250
Connection ~ 1350 7250
Wire Wire Line
	1350 7250 1350 7350
Wire Wire Line
	1800 6950 1350 6950
Connection ~ 1800 6950
Wire Wire Line
	9800 4350 9800 4650
Wire Wire Line
	9800 4650 9750 4650
Wire Wire Line
	9750 3650 10400 3650
Wire Wire Line
	10400 3650 10400 4800
Wire Wire Line
	10400 4800 10650 4800
Wire Wire Line
	10650 4700 10100 4700
Wire Wire Line
	10100 4700 10100 4350
Wire Wire Line
	10100 4350 9800 4350
$Comp
L Connector:Screw_Terminal_01x03 J6
U 1 1 60832F2F
P 10850 4700
F 0 "J6" H 10930 4742 50  0000 L CNN
F 1 "Lights" H 10930 4651 50  0000 L CNN
F 2 "RNDs:RND_Schraubklemme_3pol" H 10850 4700 50  0001 C CNN
F 3 "~" H 10850 4700 50  0001 C CNN
	1    10850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 4600 10550 4600
Wire Wire Line
	10550 4600 10550 5700
Wire Wire Line
	10550 5700 9650 5700
$Comp
L Mechanical:MountingHole H1
U 1 1 60A8DFB2
P 4700 6850
F 0 "H1" H 4800 6896 50  0000 L CNN
F 1 "MountingHole" H 4800 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 6850 50  0001 C CNN
F 3 "~" H 4700 6850 50  0001 C CNN
	1    4700 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60A8E302
P 4700 7100
F 0 "H2" H 4800 7146 50  0000 L CNN
F 1 "MountingHole" H 4800 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 7100 50  0001 C CNN
F 3 "~" H 4700 7100 50  0001 C CNN
	1    4700 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60A8E540
P 4700 7300
F 0 "H3" H 4800 7346 50  0000 L CNN
F 1 "MountingHole" H 4800 7255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 7300 50  0001 C CNN
F 3 "~" H 4700 7300 50  0001 C CNN
	1    4700 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60A8E701
P 4700 7550
F 0 "H4" H 4800 7596 50  0000 L CNN
F 1 "MountingHole" H 4800 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 7550 50  0001 C CNN
F 3 "~" H 4700 7550 50  0001 C CNN
	1    4700 7550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 60AAA62A
P 4300 5850
F 0 "J7" H 4408 6131 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4408 6040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 4300 5850 50  0001 C CNN
F 3 "~" H 4300 5850 50  0001 C CNN
	1    4300 5850
	1    0    0    -1  
$EndComp
Text Label 2350 2200 0    50   ~ 0
SER
Text Label 2450 2400 0    50   ~ 0
SRCLK
Text Label 2600 2700 0    50   ~ 0
RCLK
Text Label 2250 2900 0    50   ~ 0
OE
Text Label 3800 6850 0    50   ~ 0
GND
Text Label 3850 6650 0    50   ~ 0
5V
$Comp
L power:GND #PWR0101
U 1 1 60AAEFA3
P 4800 5950
F 0 "#PWR0101" H 4800 5700 50  0001 C CNN
F 1 "GND" H 4805 5777 50  0000 C CNN
F 2 "" H 4800 5950 50  0001 C CNN
F 3 "" H 4800 5950 50  0001 C CNN
	1    4800 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60AAF207
P 4800 5750
F 0 "#PWR0102" H 4800 5600 50  0001 C CNN
F 1 "+5V" H 4815 5923 50  0000 C CNN
F 2 "" H 4800 5750 50  0001 C CNN
F 3 "" H 4800 5750 50  0001 C CNN
	1    4800 5750
	1    0    0    -1  
$EndComp
NoConn ~ 4500 5850
Wire Wire Line
	4800 5750 4500 5750
Wire Wire Line
	4500 5950 4800 5950
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 60AC7DBB
P 5300 5900
F 0 "J8" H 5408 6181 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5408 6090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 5300 5900 50  0001 C CNN
F 3 "~" H 5300 5900 50  0001 C CNN
	1    5300 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60AC8419
P 5800 6000
F 0 "#PWR0103" H 5800 5750 50  0001 C CNN
F 1 "GND" H 5805 5827 50  0000 C CNN
F 2 "" H 5800 6000 50  0001 C CNN
F 3 "" H 5800 6000 50  0001 C CNN
	1    5800 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 60AC8423
P 5800 5800
F 0 "#PWR0104" H 5800 5650 50  0001 C CNN
F 1 "+5V" H 5815 5973 50  0000 C CNN
F 2 "" H 5800 5800 50  0001 C CNN
F 3 "" H 5800 5800 50  0001 C CNN
	1    5800 5800
	1    0    0    -1  
$EndComp
NoConn ~ 5500 5900
Wire Wire Line
	5800 5800 5500 5800
Wire Wire Line
	5500 6000 5800 6000
$EndSCHEMATC
