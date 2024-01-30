# need to tar environment with PFNano
```
tar -zvcf CMSSW_10_6_26_prod.tar.gz CMSSW_10_6_26_prod/ --exclude="*.pdf" --exclude="*.pyc" --exclude=tmp --exclude="*crab/*" --exclude=".git" --exclude="*condor/*"
```
# and copy to your eos area, for example
```
cp CMSSW_10_6_26_prod.tar.gz /eos/uscms/store/user/cmantill/CMSSW_10_6_26_prod.tar.gz
```
# note that if you change username, make sure you change the username in `submit.templ.sh`

In `submit.py` you can edit the path to submit condor jobs:
# submit examples..
``` 
python3 submit.py --tag Jan30_ul19 --ul 19
python3 submit.py --tag Jan30_ul20 --ul 20
``