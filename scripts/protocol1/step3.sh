# sample 1, sample 2 to download:


wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR108/049/ERR10851549/ERR10851549_1.fastq.gz
wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR108/049/ERR10851549/ERR10851549_2.fastq.gz


# run tophat, where sample1, sample2  your fastq files
# fasta  reference file (per chromosome) should be renamed to "lumter.fasta"

tophat lumter     sample_1.fastq  sample_2.fastq


 # it wil produces accepted_hits.bam with  Alignment results, A list of read alignments
 # jucntions.bed, A BED track of junctions reported by TopHat. Each junction consists of two connected BED blocks, where each block is as long as the maximal overhang of any read spanning the junction. The score is the number of alignments spanning the junction.
 #  file jucntions.bed, This file will be used for next steps


