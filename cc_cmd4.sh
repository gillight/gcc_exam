#!/bin/sh
/usr/lib/gcc/x86_64-linux-gnu/4.6.1/cc1 \
-E \
-v \
-imultilib . \
-imultiarch x86_64-linux-gnu \
test.c \
-mtune=generic \
-march=x86-64 \
-fdump-tree-all-all \
-fdump-rtl-all \
-fdump-noaddr \
-fdump-unnumbered \
-fdump-unnumbered-links \
-fdump-translation-unit \
-fdump-ipa-all \
-fvar-tracking \
-O3 \
-fpch-preprocess \
-fstack-protector \
-o test2.i

#-quiet \

/usr/lib/gcc/x86_64-linux-gnu/4.6.1/cc1 \
-fpreprocessed \
test2.i \
-dumpbase test.c \
-dA \
-dD \
-dH \
-dm \
-dP \
-dv \
-mtune=generic \
-march=x86-64 \
-auxbase test \
-O3 \
-version \
-fdump-tree-all-all \
-fdump-rtl-all \
-fdump-noaddr \
-fdump-unnumbered \
-fdump-unnumbered-links \
-fdump-translation-unit \
-fdump-ipa-all \
-fvar-tracking \
-fstack-protector \
-o test2.s

# -quiet \