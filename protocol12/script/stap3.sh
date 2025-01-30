#!/bin/bash

#dit is script voor het maken van index met bowtie2 en het alignen met tophat
#maak environment aan

conda create --name tophat_env

#maak de index aan met bowtie

bowtie2-build soft.masked.chromosome1.OX457036.1.fasta Lumbricus_terrestris_index

#align nu de fasta files met Tophat

tophat -o output_dir genome_index sample_1.fastq sample_2.fastq

 # it wil produces accepted_hits.bam with  Alignment results, A list of read alignments
 # jucntions.bed, A BED track of junctions reported by TopHat.
