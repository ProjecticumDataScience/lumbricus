

# get Blast rest Api

wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/

# set  path

export PATH=$PATH:$HOME/ncbi-blast-2.16.0+

#this script from protocol 6 is replaced thought create_train_list.py, run in python IDE
#
#cat bonafide.gb | perl -ne ’if(m/\/gene=\"(\S+)\"/){ \
#print "\"".$1."\"\n";}’ | sort -u > traingenes.lst
#
#  this script creates traingenes.lst, see map data-processing, redudancy

# than create bonafide.f.gtf. , createbonafidef.py., see map   redudancy  data-processing

# Convert training gene structure gtf file and FASTA file to a FASTA file containing protein
sequence

gtf2aa.pl genome.fa bonafide.f.gtf prot.aa


# see prot.aa file in redudancy data processing map

# blast aminoacids

aa2nonred.pl prot.aa prot.nr.aa

# file prot.nr.aa, see in map redudancy data processing

# this script form protocol 6 is replaced thought, grep -oE '(OX457036[A-Za-z1-9._]{1,})\w+'  prot.nr.aa > nonred.lst

#  grep ">" prot.nr.aa | perl -pe ’s/>//’ > nonred.lst

grep -oE '(OX457036[A-Za-z1-9._]{1,})\w+'  prot.nr.aa > nonred.lst

# this produces nonredundant subset of genes, see map redudancy


# this script
cat bonafide.gb | perl -ne ’
if ( $_ =~ m/LOCUS\s+(\S+)\s/ ) {
$txLocus = $1;
} elsif ( $_ =~ m/\/gene=\"(\S+)\"/ ) {
$txInGb3{$1} = $txLocus
}
if( eof() ) {
foreach ( keys %txInGb3 ) {
print "$_\t$txInGb3{$_}\n";
}
}’ > loci.lst

# is replaced thought  locilist.py  and nonred.loci.py, schould be run in python IDE
# this produces loci.lst and  nonred.loci.lst, see map reduancy


#this script from protocol 6
# filterGenesIn.pl nonred.loci.lst bonafide.gb > bonafide.f.gb
# captures only the last Locus, while there are 600 genes on 
# list. 
#  it was necessary to convert this into a cycle, 
#that would grab all 600 genes, not just the last one on the list. 

# the modified file is : bonafide.nonred.f.py
# aftter run the script. it is necessary to delete the first  //   of the file from the first line in the gb file
#  it prouces file  bonafide.f.gb  with 600 genes, see map reduancy

# the next step is creating  new model (species)
