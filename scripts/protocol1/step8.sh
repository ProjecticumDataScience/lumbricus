# *** this step optional and is needed only if your compiler doesn't identifies the Unique LOCUS in Bonafide.gb ***
# 
# If there are no uniqe identfiers, we need to format a string in a gb file:
# LOCUS       OX457036.1 Lumbricus terrestris genome assembly, chromosome: 1_18743774-18745105   1332 bp  DNA
# this string  contains unique ID after the comma, and compiler can not access it. We have to split this string in order
# to give access to the unique ID ( 1_18743774-18745105).
# we wil use  python script to extarct unique ID

# in python script:

#You need to change the “pattern” according to your bonafide  file: 
#this is a string that comes after the LOCUS, like this one
# " OX457036.1 Lumbricus terrestris genoomassemblage, chromosoom: 1_50559-55310."

# 
## usage:   

python get_uniq.py  infile.gb

# this wil produce bonafide.unique.db
# data/protocol1/model_development/bonafide/bonafide.gb