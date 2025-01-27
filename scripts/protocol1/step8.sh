#  this scripts prepares bonafide to build a new species
# before we build a new spies we have to format a string in gb file:
# LOCUS       OX457036.1 Lumbricus terrestris genome assembly, chromosome: 1_18743774-18745105   1332 bp  DNA
# this string  contains unique ID after the comma, and compiler can not access it. We have to split this string in order
# to give access to the unique ID ( 1_18743774-18745105).
# we wil use  python script to extarct unique ID