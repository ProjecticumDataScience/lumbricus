#!/bin/bash

#deze script is voor van wig naar hints voor augustus

cat rnaseq.wig | wig2hints.pl --width=10 --margin=10 --minthresh=2 \
--minscore=4 --prune=0.1 --src=W --type=ep \
--UCSC=unstranded.track --radius=4.5 --pri=4 --strand="." \
> rnaseq.gff
