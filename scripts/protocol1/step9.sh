# this script creates new species


# soft link to  bonafide.gb

ln -s bonafide.unique.gb bonafide.gb

#  create a new scpeies


new_species.pl --species=wormET0

randomSplit.pl bonafide.gb 200

# this will create 2 files :  bonafide.gb.train, and   bonafide.gb.test
# First you need to check these two files that they are not null. The original set contains 1995 genes.
# sometimes you may find that the randomSplit program sends 0 genes to bonafide.gb.test, than you have to do it with split -n 



mv bonafide.gb.test test.gb

#mv bonafide.gb.train train.gb

 etraining --species=wormET0  train.gb &> etrain.out


# you can find etreian.out in the map bonafide

tail -6 etrain.out | head -3

# this wil process output:

#tag:  511 (0.259)
#taa:  700 (0.354)
#tga:  764 (0.387)

# you need to change in the config map. wormET_parameters.cfg
#  ~/miniconda3/envs/c/config/species/wormET_parameters.cfg