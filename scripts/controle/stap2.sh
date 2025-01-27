# this step wil produce new species celegans
# model:
#


# gtf to bonafide
computeFlankingRegion.pl bonafide.gtf

gff2gbSmallDNA.pl bonafide.gtf  BX284601.5.fasta  1450 bonafide.gb


# create new species celegans 
 new_species.pl --species=celegans

etraining --species=celegans  bonafide.gb &> bonafide.out


randomSplit.pl bonafide.gb  200



etraining --species=celegans  train.gb &> etrain.out


augustus --species=celgans  test.gb > test.out
