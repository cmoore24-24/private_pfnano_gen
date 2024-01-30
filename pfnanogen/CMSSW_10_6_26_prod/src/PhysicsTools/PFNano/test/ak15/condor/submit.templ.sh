#!/bin/bash

source /cvmfs/cms.cern.ch/cmsset_default.sh

xrdcp -f root://cmseos.fnal.gov//store/user/cmoore/CMSSW_10_6_26_prod.tar.gz ./CMSSW_10_6_26_prod.tar.gz
tar -zxvf CMSSW_10_6_26_prod.tar.gz
rm *.tar.gz
ls -l
cd CMSSW_*/src
scram b ProjectRename
eval `scramv1 runtime -sh`
cd ../../

cmsRun SCRIPTNAME inputFiles=file:INPUTFILE maxEvents=-1
xrdcp -f nano_mc2017.root OUTPUTFILE
