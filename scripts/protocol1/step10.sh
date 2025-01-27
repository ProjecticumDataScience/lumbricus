# this script evaluates the modelaugustus --species=wormET0  test.gb > test.out

# test.out  : https://github.com/ProjecticumDataScience/lumbricus/blob/master/data/protocol1/bonafide/test.out


augustus --species=wormET0  test.gb > test.out




#*******      Evaluation of gene prediction     *******

#---------------------------------------------\
#                 | sensitivity | specificity |
#---------------------------------------------|
#nucleotide level |       0.963 |       0.972 |
#---------------------------------------------/
#
#----------------------------------------------------------------------------------------------------------\
#           |  #pred |  #anno |      |    FP = false pos. |    FN = false neg. |             |             |
#          | total/ | total/ |   TP |--------------------|--------------------| sensitivity | specificity |
#           | unique | unique |      | part | ovlp | wrng | part | ovlp | wrng |             |             |
#----------------------------------------------------------------------------------------------------------|
#           |        |        |      |                 78 |                 87 |             |             |
#exon level |    389 |    398 |  311 | ------------------ | ------------------ |       0.781 |       0.799 |
#           |    389 |    398 |      |   56 |    6 |   16 |   56 |    6 |   25 |             |             |
#----------------------------------------------------------------------------------------------------------/
#
#----------------------------------------------------------------------------\
#transcript | #pred | #anno |   TP |   FP |   FN | sensitivity | specificity |
#----------------------------------------------------------------------------|
#gene level |   389 |   398 |  311 |   78 |   87 |       0.781 |       0.799 |
#----------------------------------------------------------------------------/
# total time: 31.2
# command line:
# augustus --species=wormET0 test.gb
