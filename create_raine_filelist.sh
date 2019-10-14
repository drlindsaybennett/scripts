#!/bin/bash

voldir=~/obs/ncas-mobile-x-band-radar-1/incoming/raine/sandwith01_data.vol/
eledir=~/obs/ncas-mobile-x-band-radar-1/incoming/raine/sandwith_90_270.ele/
azidir=~/obs/ncas-mobile-x-band-radar-1/incoming/raine/sandwith01_zdr.azi/

cd /home/users/lbennett/logs/

#for x in $(find $voldir -maxdepth 1 -type d -name "sandwith0*_data.vol")
#do
find $voldir -name "*dBZ.vol" >> volfiles.log
#done

#for y in $(find $eledir -maxdepth 1 -type d -name "sandwith0*.ele")
#do
find $eledir -name "*dBZ.ele" >> elefiles.log
#done

#for z in $(find $azidir -maxdepth 1 -type d -name "sandwith0*.azi")
#do
find $azidir -name "*dBZ.azi" >> azifiles.log
#done

cat volfiles.log elefiles.log azifiles.log > jasmin_obs_raine_files.log

rm -f volfiles.log elefiles.log azifiles.log
