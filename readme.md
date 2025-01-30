
<!-- PROJECT LOGO -->


<h3 align="center">ab de novo genome annotation </h3>

  <p align="center">
    Workflow for processing of  genoomannotatie ab de novo .



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#Positiv">Positiv control</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#Scripts">Scripts</a></li>
    <li><a href="#Issues">Issues</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Dit project omvat het  alignment van transcriptoomreads, het trainen met het AUGUSTUS-programma 
en het analyseren van de proteomen van Lumbricus terrestris en Rubellus.

Het doel van dit project is:

* ab  de novo  genomische annotatie  voor Lumbricus Terrestris en Lumbricus Rubellus, volgens protocol 1-2. 
* Daarnaast willen we een database opzetten met de geïdentificeerde genen van deze twee wormsoorten, volgens protocol 2, 2.1. 
* Tot slot voeren we een vergelijkende proteomische analyse uit van de genen die betrokken zijn bij motorische functies,
 volgens protocol 2, 2.1, en we hebben de resultaten in een rapport verzamelt(results->proteomische studie).


<!-- GETTING STARTED -->
## Getting Started

Bestandsstructuur:


 <p> <strong> 'data'  </strong> Deze sectie bevat alle bestanden die tijdens de workflow zijn verwerkt.</p> 
 <p> Dit omvat dingen zoals uitkomsten van rna-seq alignments, GenomeThreader protein Alignments. Modellen(=species) en UniProt-eiwitcollecties.
 De gegevens zijn gesorteerd op protocol.</p>


<p>  The <strong> 'data_input ' </strong>In dit gedeelte vind je reference genomic and transctiptomic data.  </p>

<p> <strong> 'results'</strong>  Inclusief map met genen databases voor Lumbricus Terrestris en Lumbricus Rubellus, 
de webapp broncode en een analytisch rapport over proteomica. </p> 
    


 <strong> 'archief'  </strong>
deze verzameling scripts vervangt alle Perl RegEX scripts die een bash syntaxfout geven,
 binnen protocolredundantie "remove redundancy structure" 

	
<p>  <string> Tophat</string>   wordt gebruikt voor splice aware   alignment.  </p> 
<p> <string> Augustus &  GeneMark</string>  -ES/ET/EP+ ver 4.7 worden gebruikt om model ab de novo te bouwen  </p>
<p> <string> GenomeThreader wordt gebruikt om eiwitten uit te alignen </string>  </p>

<p> Vanwege de grootte van de bestanden zijn de bams bestanden verplaatst naar amazon bucket: </p>
<p> https://genome321.s3.amazonaws.com/bams.zip </p>
  
  
<h4>  Protocols: </h4>
 
  <p> <strong>Protocol1 </strong>  - omvat alignment  transctiptomische reads  en model building , gebaseerd op rna-seq  alignment</p>
  
  ![pipilne1](images/product-screenshot/p1.png)
  
  <p> <strong>Protocol2  </strong>-omvat ontwikkeling van  model dat steunt op eiwitstructuren. </p>
  
 ![pipilne2](images/product-screenshot/p2.png)
 
 <p>  <strong>Protocol2.1 </strong> -Protocol 2.1 omvat tet creëren van een database waarin de genen en hun 
 structuren voor de soorten Lumbricus Terrestris en Lumbricus Rubellus zijn geïdentificeerd. </p>



### Prerequisites

required soft:

1. GeneMark-ES/ET/EP+ ver 4.72_lic *
requeires Perl configuration, path and dependenices
download from: https://exon.gatech.edu/GeneMark/license_download.cgi

2. TopHat, can be installed with conda

3. Bowtie2, can be installed with conda

4. GenomeThreader, can be installed with conda

5. Augustus can be installed with conda
6. Breaker can be installed with zip

7. Python3

8. Linux-besturingssysteem



  
### Controle 
De positieve controle in dit experiment is C. Elegans. Het testmodel is ontwikkeld op basis van eiwitten.  
 
 


  <a href="https://wclumterr.netlify.app/">
    <img src="images/product-screenshot/pc.png">
  </a>

<a href="https://wclumterr.netlify.app/"> C. Elegans positiv control</a>


### Usage

Om genoom structure  Lumbricus Terrestris en Lumbricus Rubellus te vergelijken kun je genoomcoördinaten invoeren in de app:
 

  <a href="https://genomewclumterr.netlify.app/">
    <img src="images/product-screenshot/screen.png">
  </a>

<a href="https://genomewclumterr.netlify.app/"> app </a>


### Model Usage

Om het model te gebruiken, kopieert u de regenworm map naar uw Augutsus distributie config
Model:
data/protocol2/model

1. sudo cp -r regenworm /usr/share/augustus/config/species/
2.   cp -r regenworm  anaconda3/envs/c/config/species/
### Scripts

Scripts zijn geordend volgens het protocol.

* <strong> protocol-2.1 </strong>
* scripts/protocol2.1/dbscript.py

 Dit script zal een database aanmaken van de geïdentificeerde genen voor Lumbricus Terrestris en Lumbricus Rubellus.
 Gebruik in bash: 
python dbscript.py -i inputfile.xml -o dabase.txt
 
* <strong> protocol-2  </strong> 
*  scripts/protocol2/get_uniprot.py

 Dit script haalt het proteoom van C. elegans, E. fetida en Lumbricus op van Uniprot en maakt een multifasta GZ-bestand aan.

usage from bash: 
python get_uniprot.py
 

### Issues

<ol>
  <li> - Dit pakket is best complex en vereist Perl en Linux-configuratie,inclusief het installeren van GeneMark ET.
  Het is een complex pakket dat complexe issues oplevert</li>
<li> Het 'startAlign.pl' script stopt het proces als het geheugengebruik boven een bepaalde limiet komt. Als je dit probleem tegenkomt, 
probeer dan het fasta-bestand in twee delen te splitsen, of gebruik de --pos optie om de positie te beperken.
<p>
Je ziet het volgende bericht in de console: ERROR in startAlign.pl op regel 673. 
Uit dit bericht is de reden voor de fout niet duidelijk. De werkelijke oorzaak is dat het FASTA-bestand te groot is.
 Je kunt het probleem verhelpen door 
de fastasgrootte te verminderen of de fasta-positie in te stellen. Een alternatieve 
oplossing is om deze stap in twee delen te doen. </p>

 </li>
  <li>-Protocol1 
   Bonafide fout: "niet unieke identificaties", je kunt scripts/protocol1/get_uniq.py gebruiken. 
   Elke Python-script kan vanuit bash worden uitgevoerd, python get_uniq.py. 
   Je moet het patroon aanpassen zodat het overeenkomt met de regel na LOCUS in bonafide.gb.
   De fout komt voort uit het feit dat werken met tekst, in de kern, om tekst draait. 
   Het kan nodig zijn om tekststrings die een identificatie bevatten, te formatteren voordat de software ze kan verwerken.
  </li>

<li>-Protocol1 randomSplit.pl kent 0 genen toe aan de test- of trainingset. Je kunt in dit geval split -n gebruiken, 
of het script randomSplit.pl stap voor stap doorlopen om te ontdekken waar de resultaten op nul worden gereset.</li> 

<li>-Protocol2. Alle Perl RegEx scripts geven een bash syntaxisfout. 
Alle commando's worden anders herschreven. De oplossing hiervoor staat beschreven in docs/docs.pdf.
Als je mijn scripts met RegEx gebruikt, moet je de chromosoom-id aanpassen</li> 

<li> Protocol 6
-"filterGenesIn.pl nonred.loci.lst bonafide.gb > bonafide.f.gb"
 Dit commando slaat enkel de laatste locus van bonafid.gb op. 
 Het doel van deze taak is om alle loci die  niet redudant zijn  in de verzameling te identificeren. 
 Deze taak is vervangen door een loop en is te vinden in de  scripts, archief in sectie remove_redudant.
</li> 
</ol>






### Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

    Fork the Project
    Create your Feature Branch (git checkout -b feature/AmazingFeature)
    Commit your Changes (git commit -m 'Add some AmazingFeature')
    Push to the Branch (git push origin feature/AmazingFeature)
    Open a Pull Request
