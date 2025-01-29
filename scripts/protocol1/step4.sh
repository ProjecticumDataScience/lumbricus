
# this scrips produces introns.gff from the tophat results
# use file junctions.bed  and bed_to_gff.pl   from GeneMark ET distributions
# bed_to_gff.pl -  scripts/protocol1/bed_to_gff.pl
# use bed_to_gff.pl from the GeneMark ET distribution to convert aligment file to hints
 
 
 perl  path_to/GeneMarkES/bed_to_gff.pl \
 --bed  path_to/tophat_out/junctions.bed \
 --gff introns.gff  --label TopHat2
   
   
# junctions.bed : data/protocol1/model_development/TOPHAT/junctions.bed
#  introns.gff:  data/protocol1/model_development/TOPHAT/introns.gff


# the output file introns.gff contains strand information that can be used for ET trainging
#the output of junctons.bed
#OX457036.1	202801	204722	JUNC00000008	1	+	202801	204722	255,0,0	2	119,32	0,1889
# the output of introns.gff:
#OX457036.1	TopHat2	intron	253060	254504	12	+	.	

