# this step wil produce new model  "celegans"
# test-model:
# data/controle/celegans/test-model/celegans


# gtf to bonafide
computeFlankingRegion.pl bonafide.gtf

gff2gbSmallDNA.pl bonafide.gtf  BX284601.5.fasta  1450 bonafide.gb


# create new species celegans 
 new_species.pl --species=celegans

etraining --species=celegans  bonafide.gb &> bonafide.out




randomSplit.pl bonafide.gb 200
mv bonafide.gb.test test.gb
mv bonafide.gb.train train.gb

etraining --species=celegans  train.gb &> etrain.out


augustus --species=celgans  test.gb > test.out
