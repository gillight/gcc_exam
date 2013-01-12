#!/bin/sh
export COLLECT_GCC=gcc
export COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-linux-gnu/4.6.1/lto-wrapper
env COLLECT_GCC_OPTIONS='-O3 -save-temps -fdump-tree-all-all -fdump-rtl-all -fdump-noaddr -fdump-unnumbered -fdump-unnumbered-links -fdump-translation-unit -dA -dD -dH -dm -dP -dv -fdump-ipa-all -fvar-tracking -mtune=generic -march=x86-64' \
/usr/lib/gcc/x86_64-linux-gnu/4.6.1/cc1 -E -quiet -imultilib . -imultiarch x86_64-linux-gnu test.c "-mtune=generic" "-march=x86-64" -fdump-tree-all-all -fdump-rtl-all -fdump-noaddr -fdump-unnumbered -fdump-unnumbered-links -fdump-translation-unit -fdump-ipa-all -fvar-tracking -O3 -fpch-preprocess -fstack-protector -o test.i

env \
COLLECT_GCC_OPTIONS='-O3 -save-temps -fdump-tree-all-all -fdump-rtl-all -fdump-noaddr -fdump-unnumbered -fdump-unnumbered-links -fdump-translation-unit -dA -dD -dH -dm -dP -dv -fdump-ipa-all -fvar-tracking -mtune=generic -march=x86-64' \
/usr/lib/gcc/x86_64-linux-gnu/4.6.1/cc1 \
-fpreprocessed \
test.i \
-dumpbase test.c \
-dA \
-dD \
-dH \
-dP \
-dv \
-mtune=generic \
-march=x86-64 \
-auxbase test \
-O0 \
-fdump-tree-all-all \
-fdump-rtl-all \
-fdump-noaddr \
-fdump-unnumbered \
-fdump-unnumbered-links \
-fdump-translation-unit \
-fdump-ipa-all \
-fvar-tracking \
-fstack-protector \
-o test.s

# -dm 
#-quiet \
