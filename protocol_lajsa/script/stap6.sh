#!/bin/bash

# deze script is voor het uitvoeren van augustus met de gemaakte hints


cp augustus/config/extrinsic/extrinsic.M.RM.E.W.P.cfg extrinsic.bug.cfg

augustus --species=bug \
--extrinsicCfgFile=extrinsic.bug.cfg --hints file=hints.gff \
--allow_hinted_splicesites=atac \
--softmasking=on genome.fa > augustus.hints.gff
