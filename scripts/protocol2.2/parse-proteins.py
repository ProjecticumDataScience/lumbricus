# -*- coding: utf-8 -*-
"""
Created on Tue Dec 31 20:20:43 2024

@author: Mijn-PC
"""

# -*- coding: utf-8 -*-
"""
Created on Mon Dec 23 09:15:41 2024

@author: Mijn-PC
"""

import os
cwd = os.getcwd()

print(cwd)



import re
import pandas as pd

gff="parsed.gff3"
out="out.gff"
prots="prots.gff"


# remove #, removing leading whitespaces

with open(gff, 'r') as infile, open(out, 'w') as outfile:
	temp = infile.read().replace("#", "")    
	outfile.write(temp)
    
with open(gff, 'r') as file:
    for line in file:        
        newline=line.lstrip()        
        with open ("out", "a") as  outf:
            outf.write(newline)
            outf.close() 
                
    
cds_coords = [] 

protein_seq=[]
  
content = open("parsed.gff3", 'r').read()
pattern_a = r'CDS.*\s+\d+\w+'
matches_a = re.findall(pattern_a, content)
cds_coords.extend(matches_a)
print(cds_coords)


pattern_b="protein sequence =.*[A-Za-z\s\]]{1,}\]"
#pattern_b=r"protein sequence =.*[A-Za-z\s\]]{1,}"
matches_b=re.findall(pattern_b, content)
protein_seq.extend(matches_b)


print(cds_coords)
print(protein_seq)



# create dataframe with protein seqs 

with open('df', 'w+') as f:
    for items in protein_seq:
      f.write('%s\n' %items)
   
print("File written successfully")


file_path = "df"
df2= pd.read_csv(file_path,sep='\t')
df2.head()

for index, row in df2.iterrows():
    print( {index})

# start coordinate
df2.iloc[:,3]
# end coordiante
df2.iloc[:,4]

# set col names to dataframe

column_names=['feature','start','end']
df2 =  pd.read_csv(file_path,sep='\t', names=column_names) 
df2.head()


#  save df to file 

df2.to_csv("df2", sep='\t', index=False)

#df2.reset_index(inplace=True)

# access per column header

#df2.loc[:,"chr"]

# feature
#df2.loc[:,"feature"]

print(len(cds_coords))
print(len( protein_seq))


import re
readtxtfile = r'parsed.gff3'
with open(readtxtfile) as fp:
    txtrawdata = fp.read()    
    genes = re.split(r'end\sgene.*',txtrawdata)

print(len(genes))

# the last one contains augustus comman line and should be stripped off
print(genes[-1])
genes.pop()
# after that len = 38


# loop through the gene list:
 
for gendata in genes:
    print(gendata)
    print("----------------------")    

# list with string all cds as as string for interation object

str_coords=[]
str_proteins=[]

    
    
for gendata in genes:
    cds_coords = []
    protein_seq=[]
    
    pattern_a = r'CDS.*\s+\d+\w+'
    matches_a = re.findall(pattern_a, gendata)
    cds_coords.extend(matches_a)
    
    pattern_b="protein sequence =.*[A-Za-z\s\]]{1,}\]"
    matches_b=re.findall(pattern_b, gendata)     
    protein_seq.append(matches_b[0])
    delimiter = " " # Define a delimiter
    joined_coords=delimiter.join(cds_coords)   
   
    #print(protein_seq) 
   
    str_coords.append(joined_coords)   
    str_proteins.extend(protein_seq)
         

for seq in str_proteins:
    print("-------------")
    seq.rstrip()
    print(seq)




print(len(str_coords))  
print(len(str_proteins)) 

print(str_proteins)


 
dict={"cd_coords":str_coords, "protein_seq":str_proteins}
df = pd.DataFrame(dict)
print(df)

print("Using iloc[] for index-based iteration:")
for i in range(len(df)):
    print(f"Row {i}: {df.iloc[i]}")
    
    
column_names = df.columns
print(column_names)  
 


for index, row in df.iterrows():
    print( ">",  row["cd_coords"],  "\n", row['protein_seq'])
    
    
    

outfile = open("proteinsdb.fa", 'w')

for index, row in df.iterrows():
    print( ">",  row["cd_coords"],  "\n", row['protein_seq'])
    outfile.write( ">" + str(row["cd_coords"]) +  "\n" + str(row['protein_seq'])+"\n" )
outfile.close()
    
