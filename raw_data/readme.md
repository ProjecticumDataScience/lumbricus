

For the first step :

fasta file  Lumbricus terrestris GCA_945859605.1  chromosome 1  is gescanded with augustus, with output raw 11 632 genes


###
##### command line:
##### augustus --species=caenorhabditis lumbricus_seq_chr1.fasta --genemodel=complete

For the second step:

The same fasta is scanned by GeneMark.hmm version 3.68  with final results  : ...
( ca. 50 000, complete genome ? )

command bash:

$dir/gmhmme3  -o GeneMark-E-tests/GeneMark.hmm/test/genemark_chr1_lumbricus.gff3  -m GeneMark-E-tests/GeneMark.hmm/input/c_elegans.mod  -f gff3  GeneMark-E-tests/GeneMark.hmm/input/sequence.fasta
