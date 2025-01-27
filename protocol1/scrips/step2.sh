
# raw fasta file to download:
# https://ftp.ensembl.org/pub/rapid-release/species/Lumbricus_terrestris/GCA_949752735.1/ensembl/genome/

# wget https://ftp.ensembl.org/pub/rapid-release/species/Lumbricus_terrestris/GCA_949752735.1/ensembl/genome/Lumbricus_terrestris-GCA_949752735.1-softmasked.fa.gz
# gunzip  Lumbricus_terrestris-GCA_949752735.1-softmasked.fa.gz
# build index name lumter

bowtie2-build -f  Lumbricus_terrestris-GCA_949752735.1-softmasked.fa  lumter  --large-index

# this will build index files with prefix lumter





