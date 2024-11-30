## Genome and annotation reference


The biomart  genome reference  was downloaded from 

http://www.ensembl.org/biomart/martview/12ded96fa118dd6be6a3caa6af5d188b


## Preparatin of dataset


awk '{print $6}'  mart_export.txt   | sort | uniq -c | wc -l


## drosophila melanogaster, chromosome 1 :  23795

##  mouse, , chromosome 1  1499