# for protHints installation, see protocol 2, step1.

#  uniprot proteome  Lumbricus Terrestris:
# https://www.uniprot.org/uniprotkb?query=%28taxonomy_id%3A6397%29
# unitprot proteome Eisenia:
#https://www.uniprot.org/uniprotkb?query=%28taxonomy_id%3A6393%29
# this 2 proteoms are mergen in one  file
# merged_6393_and_6397.fa (see data_processing)

# create protein hints with ProtHints  for chromosome 1

#


../bin/prothint.py ../OX457036.1.fasta ../merged_6393_and_6397.fa

# Prothint generates prothint_augustus.gff
# see data_processing

# with prothint you can run Augutus directly


augustus --species=caenorhabditis
--predictionStart=2000000 --predictionEnd=3000000\
OX457036.1.fasta
--extrinsicCfgFile=extrinsic.cfg
--hintsfile=prothint_augustus.gff
> augustus.extrinistics.hints.gff


# this wil produce gff annotation, see protocol12->gff-> augustus.proteome.hints.2-3mb.gff
# for extrinistic cfg, see
#https://github.com/nextgenusfs/augustus/blob/master/config/extrinsic/cgp.extrinsic.cfg


# GenomeThreader

gth -genomic soft.masked.chromosome1.OX457036.1.fasta  -protein merged_6393_and_6397.fa  > output.gth
