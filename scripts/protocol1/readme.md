

Deze pipline creëert een model gebaseerd op rna-seq.
Rna-seq data:


* wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR108/049/ERR10851549/ERR10851549_1.fastq.gz
* wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR108/049/ERR10851549/ERR10851549_2.fastq.gz



In de huidige conda-distributie geeft het script filterGenemark.pl 
een foutmelding. Het script filterGenemark.pl in deze map werkt echter wel.
    lumbricus/scripts/protocol1/filterGenemark.pl 
	
	
pipline-1  

<strong> query fasta-> bam->hints->hmm model-> introns cut-out-> training-set genes-> generate model	 </strong>
	
