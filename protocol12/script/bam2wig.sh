#!/bin/bash

#dit is een script voor het transformeren van bam naar wig
#maak augustus environemt

conda create --name augustus

conda activate augustus

#van bam naar wig

bam2wig accepted_hits.bam > rnaseq.wig
