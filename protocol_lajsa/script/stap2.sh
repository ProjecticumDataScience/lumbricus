#!/bin/bash

#haal fasta files van eisenia, terrestris en muis vanuit web

# https://ftp.ensembl.org/pub/rapid-release/species/Lumbricus_terrestris/GCA_949752735.1/ensembl/genome/

wget https://ftp.ensembl.org/pub/rapid-release/species/Lumbricus_terrestris/GCA_949752735.1/ensembl/genome/Lumbricus_terrestris-GCA_949752735.1-softmasked.fa.gz
gunzip  Lumbricus_terrestris-GCA_949752735.1-softmasked.fa.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR597/007/SRR5974917/SRR5974917_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR597/007/SRR5974917/SRR5974917_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR435/002/ERR4351532/ERR4351532_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR435/002/ERR4351532/ERR4351532_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR885/003/SRR8850733/SRR8850733_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR885/003/SRR8850733/SRR8850733_2.fastq.gz

