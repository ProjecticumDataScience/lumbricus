# this script will process proteins aligment to build a new model from proteins
# resultaten van de pipline positieve controle C Elegans hier, tracks+refseq: https://wclumterr.netlify.app/


# Unprot proteome: 
#https://raw.githubusercontent.com/ProjecticumDataScience/lumbricus/refs/heads/master/data_input/celegans_controle/raw_data/UP000001940_6239.fasta
#   input fasta :
# https://github.com/ProjecticumDataScience/lumbricus/tree/master/data_input/celegans_controle/raw_data

#  Step 1: proteome Uniprot alignment 
startAlign.pl --genome BX284601.5.fasta --prot UP000001940_6239.fasta  --pos OX457036.1:1-10000000  --prg gth

# this wil produce object gth conact align:
https://raw.githubusercontent.com/ProjecticumDataScience/lumbricus/refs/heads/master/data/controle/celegans/gth.concat.aln