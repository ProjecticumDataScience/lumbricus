
# this script builds genemrk model, using introns.gff 
# introns.gff :  https://github.com/ProjecticumDataScience/lumbricus/blob/master/data/protocol1/TOPHAT/introns.gff


 ../../gmes_petap.pl     --verbose --sequence   genome.fa   --ET  introns.gff
 
 # this command wil produce gmhmm.mod, and genemark.gtf, see data proccessing
 # genemark.gtf:     https://github.com/ProjecticumDataScience/lumbricus/blob/master/data/protocol1/GeneMarkES/genemark.gtf
 #  genemark  model :  https://github.com/ProjecticumDataScience/lumbricus/blob/master/data/protocol1/GeneMarkES/hmm.model/gmhmm.mod
