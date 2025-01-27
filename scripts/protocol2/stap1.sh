
# pre-requirements
#conda install bioconda::genomethreader

# prerequirements: 1.  sudo cp -r regenworm /usr/share/augustus/config/species/
#  2.  cp -r regenworm  anaconda3/envs/c/config/species/
# model:  https://github.com/ProjecticumDataScience/lumbricus/tree/master/data/protocol2/model
# raw  https://raw.githubusercontent.com/ProjecticumDataScience/lumbricus/refs/heads/master/data_input/protocol02/proteins/idmapping_2025_01_18.fasta

fastas=("chr1.fasta" "chr2.fasta" "chr3.fasta" "chr4.fasta")

for fasta in ${fastas[@]}; do
	echo $fasta
	augustus  --species=regenworm $fasta > $fasta.gff
	gth -genomic $fasta  -protein  idmapping_2025_01_18.fasta -xmlout  > $fasta.lumrube.xml
done



# usage outside the loop:
#gth -genomic sequence.fasta  -protein  idmapping_2025_01_18.fasta -xmlout  > output.chr1.lumrube.xml

# this wil produce xml alginment file, this xml alignment is used in the second step : 

#protocol2/stap2.sh
