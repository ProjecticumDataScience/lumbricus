


### fasta file  Lumbricus terrestris GCA_945859605.1  chromosome  1% is scanned in SNAP pipeline in combination met Helixer (web version)
## Base statistic : 
1 % procent of chromosome containts:   38 genes, 37 OK, 18 warnings, 1 errors



 1084  mkdir train_at <br />
 1085  cd train_at<br />
 1086  ../gff3_to_zff.pl     /home/alena/SNAP/1%/terr-1pr.fasta   /home/alena/SNAP/1%/Helix-OX457036.Galaxy12-on_data_1_procent.gff3   > at.zff <br />
 1087  ../fathom -validate at.zff ../1%/terr-1pr.fasta    > at.validate <br />
 1088  ../fathom -export 100 -plus uni.* <br />
 1089  ../fathom -categorize 100 at.zff ../DATA/at.fa.gz <br />
 1090  ../fathom -categorize 100 at.zff ../fathom -validate at.zff ../1%/terr-1pr.fasta <br />
 1091  ../fathom -categorize 100 at.zff   1%/terr-1pr.fasta <br />
 1092  ../fathom -categorize 100 at.zff  ../1%/terr-1pr.fasta <br />
 1093  ../fathom -export 100 -plus uni.*  <br />
 1094  ../fathom -validate export.ann export.dna  <br />
 1095  ../forge export.ann export.dna  <br />
 1096  ./hmm-assembler.pl worm . > at.hmm  <br />
 1097  ../hmm-assembler.pl worm . > at.hmm  <br />
 1098  ../snap at.hmm export.dna > export_dna  <br />
 1099  ../snap at.hmm uni.dna > export_snap  <br />
 1100  ../snap at.hmm uni.dna >export_uni_dna  <br />
 1101  ../snap at.hmm ../  ../1%/terr-1pr.fasta  > export_snaps_at_hmm  <br />
 1102  ../snap at.hmm  ../1%/terr-1pr.fasta  > export_snaps_at_hmm <br />
 1103  history > export_bash_history  <br />





