# this script creates object concat align, which is needed to create model

startAlign.pl --genome Lumbricus_terrestris-GCA_949752735.1-softmasked.fa  --prot proteome.fa  --prg  gth  

# proteome  :https://github.com/ProjecticumDataScience/lumbricus/tree/master/data/protocol2.1/uniprot_proteome

# Lumbricus_terrestris-GCA_949752735.1-softmasked.fa: https://ftp.ensembl.org/pub/rapid-release/species/Lumbricus_terrestris/GCA_949752735.1/ensembl/genome/



# Als je fout "line 673" ziet, is dat niets anders dan een geheugenfout. Het wordt opgelost  door de fasta te splitsen
# in 4 segmenten en een startAlign.pl  uit te voeren in een lus


## Alternatief: Je kunt een fasta-bestand splitsen in twee delen met faSplit en vervolgens een alignment voor elk deel uitvoeren
## vervolgens 2 text bestanden mergen
## script startAlign.pl creëert complexe problemen die moeilijk op te lossen zijn 