#!/bin/bash

# send Ctrl-C
echo -e '\003' > /dev/ttyUSB0

# upload the code
mpfshell \
    -n -c \
    "open ttyUSB0; \
    lcd src; mput .*\.py;"
