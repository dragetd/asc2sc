#!/bin/bash

# Author: Draget
# Source: https://github.com/dragetd/asc2sc
# License: GPL v3
# Version: v1.0.0

# convert ascii character to scancode for key press and release
asc2sc() {
	CHAR=$(echo "$1" | tr '[:lower:]' '[:upper:]')
	SC=""
	case $CHAR in
	'A') SC='1E 9E';;
	'B') SC='30 B0';;
	'C') SC='2E AE';;
	'D') SC='20 A0';;
	'E') SC='12 92';;
	'F') SC='21 A1';;
	'G') SC='22 A2';;
	'H') SC='23 A3';;
	'I') SC='17 97';;
	'J') SC='24 A4';;
	'K') SC='25 A5';;
	'L') SC='26 A6';;
	'M') SC='32 B2';;
	'N') SC='31 B1';;
	'O') SC='18 98';;
	'P') SC='19 99';;
	'Q') SC='10 90';;
	'R') SC='13 93';;
	'S') SC='1F 9F';;
	'T') SC='14 94';;
	'U') SC='16 96';;
	'V') SC='2F AF';;
	'W') SC='11 91';;
	'X') SC='2D AD';;
	'Y') SC='15 95';;
	'Z') SC='2C AC';;
	'0') SC='0B 8B';;
	'1') SC='2 82';;
	'2') SC='3 83';;
	'3') SC='4 84';;
	'4') SC='5 85';;
	'5') SC='6 86';;
	'6') SC='7 87';;
	'7') SC='8 88';;
	'8') SC='9 89';;
	'9') SC='0A 8A';;
	'`') SC='29 89';;
	'-') SC='0C 8C';;
	'=') SC='0D 8D';;
	'\\') SC='2B AB';;
	' ') SC='39 B9';;
	'[') SC='1A 9A';;
	']') SC='1B 9B';;
	';') SC='27 A7';;
	"'") SC='28 A8';;
	',') SC='33 B3';;
	'.') SC='34 B4';;
	'/') SC='35 B5';;
	*) ;; # unhandled char
	esac
	printf '%s' "$SC"
}


# Loop over input
I=0
TEXT=$1
while (( I++ < ${#TEXT} )); do
	CHAR=${TEXT:I-1:1}
	printf '%s ' "$(asc2sc "$CHAR")"
done
