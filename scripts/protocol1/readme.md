

Deze pipline creëert een model gebaseerd op rna-seq.
Rna-seq data:

<a> https://genome321.s3.amazonaws.com/1ERR10851549_1.fastq.gz  </a>
<a>   https://genome321.s3.amazonaws.com/2ERR10851549_2.fastq.gz </a>

pipline1  

query fasta-> bam->hints->hmm model-> introns cutout-> training-set genes-> generate model


In de huidige conda-distributie geeft het script filterGenemark.pl 
een foutmelding. Het script filterGenemark.pl in deze map werkt echter wel.
    lumbricus/scripts/protocol1/filterGenemark.pl 
	
	