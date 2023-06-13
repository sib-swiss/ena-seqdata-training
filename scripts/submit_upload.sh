#!/usr/bin/env bash

USER=Webin-61030
PASS=thisisatestpw
HOST=webin2.ebi.ac.uk
DIR=./

PROJDIR=/data/projects/myproject
cd $PROJDIR/reads/ena_submission

for FILE in *.fastq.gz
do
  ./upload_ftp.sh $HOST $USER $PASS $FILE $DIR
done
