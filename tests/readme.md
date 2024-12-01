
## fasta 
https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/949/752/735/GCA_949752735.1_wcLumTerr1.1/
https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/945/859/605/GCA_945859605.1_wcLumRube1.1


## Genome and annotation reference


The biomart  reference  was downloaded from 

http://www.ensembl.org/biomart/martview/12ded96fa118dd6be6a3caa6af5d188b


## Preparatin of dataset


awk '{print $[gen_name]}'  mart_export.txt   | sort | uniq -c | wc -l


## drosophila melanogaster, chromosome 1 : 

##  mouse, , chromosome 1  

## c elegans chromosome 1 
