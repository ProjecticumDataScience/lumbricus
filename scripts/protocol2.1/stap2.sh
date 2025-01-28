# this script creates object concat align, which is needed to create model

startAlign.pl --genome Lumbricus_terrestris-GCA_949752735.1-softmasked.fa  --prot proteome.fa  --prg  gth  

# proteome  :https://github.com/ProjecticumDataScience/lumbricus/tree/master/data/protocol2.1/uniprot_proteome

# Lumbricus_terrestris-GCA_949752735.1-softmasked.fa: https://ftp.ensembl.org/pub/rapid-release/species/Lumbricus_terrestris/GCA_949752735.1/ensembl/genome/



# Als je fout "line 673" ziet, is dat niets anders dan een geheugenfout. Het wordt opgelost  door de fasta te splitsen
# in 4 segmenten en een startAlign.pl  uit te voeren in een lus

# Dit is de cyclus

posities=(“wcL:1-22500000”  ” wcL:22500000-45000000”  “wcL:45000000- 67500000”  “wcL:67500000- 90000000”  )

for pos in ${posities[@]}; do
    	echo $pos
             	startAlign.pl --genome=genome.fa  --prot=proteome.fasta --prg=gth pos=$pos

done


# een fasta-bestand aangepast aan deze lus hier :
https://genome321.s3.amazonaws.com/genome.fa
# (dit is dezelfde fasta Lumbricus_terrestris-GCA_949752735.1- , maar met aangepaste headercoördinaten, 
# om het mogelijk te maken zo'n cyclus te doorlopen).
# resulterende files is 4 text files gth.concat.aln, die je samen kan mergen

## Alternatief: Je kunt een fasta-bestand splitsen in twee delen met faSplit en vervolgens een alignment voor elk deel uitvoeren
## vervolgens 2 text bestanden mergen
## script startAlign.pl creëert complexe problemen die moeilijk op te lossen zijn 