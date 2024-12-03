 1065  mkdir train_at
 1066  cd train_at/
 1067  ../gff3_to_zff.pl ../1%/1procent_lum_rub_chr1.fasta ../1%/OX243811.1Galaxy-\[Helixer_on_data_1_procent.gff3  > at.zff
 1068  ../fathom -validate at.zff  ../1%/1procent_lum_rub_chr1.fasta > at.validate
 1069  ../fathom -categorize 100 at.zff   ../1%/1procent_lum_rub_chr1.fasta
 1070  ../fathom -validate at.zff  ../1%/1procent_lum_rub_chr1.fasta > at.validate
 1071  ../fathom -export 100 -plus uni.*
 1072  ../fathom -validate export.ann export.dna
 1073  ../forge export.ann export.dna
 1074  ./hmm-assembler.pl A.thaliana . > at.hmm
 1075  ../hmm-assembler.pl A.thaliana . > at.hmm
 1076  ../snap at.hmm export.dna > output/dna_export
 1077  ../snap at.hmm uni.dna > output/uni_dna_export
 1078  ../snap at.hmm  /home/alena/SNAP/1%/1procent_lum_rub_chr1.fasta > snap_export
 1079  ../fathom -categorize 100 at.zff  /home/alena/SNAP/1%/1procent_lum_rub_chr1.fasta
 1080  grep -c ">" *.ann
 1081  cd ..
 1082  ls
 1083  augustus  --species=fly  testen/drosophila_chr2L/sequence.fasta  --genemodel=complete > testen/drosophyla_chr2L.gff
 1084  mkdir train_at
 1085  cd train_at
 1086  ../gff3_to_zff.pl     /home/alena/SNAP/1%/terr-1pr.fasta   /home/alena/SNAP/1%/Helix-OX457036.Galaxy12-on_data_1_procent.gff3   > at.zff
 1087  ../fathom -validate at.zff ../1%/terr-1pr.fasta    > at.validate
 1088  ../fathom -export 100 -plus uni.*
 1089  ../fathom -categorize 100 at.zff ../DATA/at.fa.gz
 1090  ../fathom -categorize 100 at.zff ../fathom -validate at.zff ../1%/terr-1pr.fasta
 1091  ../fathom -categorize 100 at.zff   1%/terr-1pr.fasta
 1092  ../fathom -categorize 100 at.zff  ../1%/terr-1pr.fasta
 1093  ../fathom -export 100 -plus uni.*
 1094  ../fathom -validate export.ann export.dna
 1095  ../forge export.ann export.dna
 1096  ./hmm-assembler.pl worm . > at.hmm
 1097  ../hmm-assembler.pl worm . > at.hmm
 1098  ../snap at.hmm export.dna > export_dna
 1099  ../snap at.hmm uni.dna > export_snap
 1100  ../snap at.hmm uni.dna >export_uni_dna
 1101  ../snap at.hmm ../  ../1%/terr-1pr.fasta  > export_snaps_at_hmm
 1102  ../snap at.hmm  ../1%/terr-1pr.fasta  > export_snaps_at_hmm
 1103  history > export_bash_history
