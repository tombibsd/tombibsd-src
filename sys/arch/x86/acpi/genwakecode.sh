#!/bin/sh
# $NetBSD$

AWK=${AWK:=awk}
HEXDUMP=${HEXDUMP:=hexdump}
SED=${SED:=sed}

P='/WAKEUP_/ { printf("#define\t%s%s\t%s\n", $2, length($2) < 16 ? "\t" : "", $1); }'
${AWK} "$P" < acpi_wakecode.bin.map

echo 
echo 'static const unsigned char wakecode[] = {';
${HEXDUMP} -v -e '"\t" 8/1 "0x%02x, " "\n"' < acpi_wakecode.bin | ${SED} 's/0x  /0x00/g'
echo '};'

exit 0
