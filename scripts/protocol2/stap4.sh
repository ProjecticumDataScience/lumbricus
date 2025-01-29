# this script produces bonafide gb
# 1588 = flankingRegion


computeFlankingRegion.pl bonafide.gtf

gff2gbSmallDNA.pl bonafide.gtf genome.fa 1588  bonafide.gb