
# resultaten van de pipline positieve controle C Elegans hier, tracks+refseq: https://wclumterr.netlify.app/


startAlign.pl --genome BX284601.5.fasta --prot UP000001940_6239.fasta  --pos OX457036.1:1-10000000  --prg gth


gth2gtf.pl gth.concat.aln  bonafide.gtf


computeFlankingRegion.pl bonafide.gtf

gff2gbSmallDNA.pl bonafide.gtf  BX284601.5.fasta  1450 bonafide.gb



 new_species.pl --species=celegans

etraining --species=celegans  bonafide.gb &> bonafide.out


randomSplit.pl bonafide.gb  200



etraining --species=celegans  train.gb &> etrain.out


augustus --species=celgans  test.gb > test.out
