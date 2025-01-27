
# this scrips produces introns.gff from the tophat results
# use file junctions.bed  and bed_to_gff.pl   from GeneMark ET distributions
# bed_to_gff.pl -  https://github.com/ProjecticumDataScience/lumbricus/blob/master/scripts/protocol1/bed_to_gff.pl
# use bed_to_gff.pl from the GeneMark ET distribution to convert aligment file to hints
 
 
 perl  path_to/GeneMarkES/bed_to_gff.pl \
 --bed  path_to/tophat_out/junctions.bed \
 --gff introns.gff  --label TopHat2
   