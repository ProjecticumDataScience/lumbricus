# this script will create a new species

new_species.pl --species=regenworm

etraining --species=regenworm bonafide.gb &> bonafide.out

filterGenes.pl bad.lst bonafide.gb > bonafide.f.gb

randomSplit.pl bonafide.gb 200
mv bonafide.gb.test test.gb
mv bonafide.gb.train train.gb


etraining --species=regenworm  train.gb &> etrain.out

augustus --species=regenworm test.gb > test.out


# test out:
#  https://raw.githubusercontent.com/ProjecticumDataScience/lumbricus/refs/heads/master/data/protocol2.1/model_development/test.out
