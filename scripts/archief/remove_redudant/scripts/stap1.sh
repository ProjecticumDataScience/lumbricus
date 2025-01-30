
# get blast ncbi
wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/

# set path to your folder with ncbi-blast-2.16.0+

export BLAST_PATH="/blast/ncbi-blast-2.16.0+":$BLAST_PATH

gtf2aa.pl 01.fasta  bonafide.gtf prot.aa

# this will create prot.aa


aa2nonred.pl prot.aa prot.nr.aa

# this will create prot.nr.aa , processing map

python traingenes.py  bonafide.gb
 
# this produces  traingenes.lst, processing map


#terrestris:
grep -oE '(OX457036[A-Za-z1-9._]{1,})\w+' prot.nr.aa > nonred.lst

#rubellus:
grep -oE '(OX243811[A-Za-z1-9._]{1,})\w+' prot.nr.aa > nonred.lst


# this produces nonred.lst, processing map
grep -f traingenes.lst -F bonafide.gtf > bonafide.f.gtf

# this produces bonafide.f.gtf, map processing

python create_loci_list.py  bonafide.gb

# this produces  loci.lst, map processing

python create_nonred_list.py  nonred.lst  loci.lst
 
# this produces nonred.loci.lst, map processing

python filterGenesInNonred.py  bonafide.gb  nonred.loci.lst 

# this produces bonafide.f.nonred.gb, map processing

ln -s bonafide.f.nonred.gb  bonafide.gb


# bonafide.gb is ready to create a new species from! (see protocol2)