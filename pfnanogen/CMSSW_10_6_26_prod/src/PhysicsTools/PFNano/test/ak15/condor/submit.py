#!/usr/bin/python

import argparse
import os
import subprocess
import re

_nsre = re.compile('([0-9]+)')
def natural_sort_key(s):
    return [int(text) if text.isdigit() else text.lower()
            for text in re.split(_nsre, s)]

parser = argparse.ArgumentParser()
parser.add_argument("--tag", default="Nov30", help="tag", type=str)
parser.add_argument("--ul", choices=['preUL','20','19','lc'], required=True, help="ul 19 or 20 or preUL")
args = parser.parse_args()

tag = args.tag
eosbase = "root://cmseos.fnal.gov/"
locdir = tag
if args.ul=='20':
    script = "nano_mc_2017_UL_NANO.py"
    eospath = "/store/user/cmoore/Test_Minis/"
    outdir = "/store/user/cmoore/New_PF_Nano_Test/"

samples = {
    "20": {
    },
}[args.ul]

os.system(f"mkdir -p {locdir}")
os.system(f"mkdir -p {locdir}/logs")
files = subprocess.check_output(f"eos {eosbase} ls {eospath}/", shell=True).decode('utf-8').split("\n")[:-1]
files.sort(key=natural_sort_key)

for j,ifile in enumerate(files):   
    condor_templ_file = open("submit.templ.jdl")
    localcondor = f"{locdir}/HJ_{j}.jdl"
    condor_file = open(localcondor, "w")
    for line in condor_templ_file:
        line = line.replace("DIRECTORY", locdir)
        line = line.replace("PREFIX", 'HJ')
        line = line.replace("JOBID", str(j))
        line = line.replace("SCRIPTNAME", script)
        condor_file.write(line)
    condor_file.close()
    condor_templ_file.close()
            
    sh_templ_file = open("submit.templ.sh")
    localsh = f"{locdir}/HJ_{j}.sh"
    sh_file = open(localsh, "w")
    for line in sh_templ_file:
        line = line.replace("SCRIPTNAME", script)
        line = line.replace("INPUTFILE", f"{eosbase}{eospath}/{ifile}")
        line = line.replace("OUTPUTFILE", f"{eosbase}{outdir}/{ifile}")
        sh_file.write(line)
    sh_file.close()
    sh_templ_file.close()

    os.system(f"chmod u+x {localsh}")
    if os.path.exists("%s.log" % localcondor):
        os.system("rm %s.log" % localcondor)
                
    os.system('condor_submit %s' % localcondor) 
            #if j==0: break
