# this script will process proteins aligment to build a new model from proteins
# resultaten van de pipline positieve controle C Elegans visualized hier, tracks+refseq: https://wclumterr.netlify.app/


# Unprot proteome C elegans: 
# data_input/celegans_controle/raw_data/UP000001940_6239.fasta  
# input fasta :
# data_input/celegans_controle/raw_data/fasta/BX284601.5.fasta

#  Step 1: proteome Uniprot alignment 
startAlign.pl --genome BX284601.5.fasta --prot UP000001940_6239.fasta  --pos OX457036.1:1-10000000  --prg gth

# this wil produce object gth conact align:

# data/controle/celegans/gth.concat.aln

# after getting gth.concat.aln, you schoud replace "ENA" throught current chromosome name in your gth.concat.aln file 

