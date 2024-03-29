#!/bin/bash
dasgoclient --query="dataset dataset=/QCD_HT*/*Summer20UL16MiniAODv2-*/MINIAODSIM status=*" | grep -v "BGenFilter"
dasgoclient --query="dataset dataset=/TT*/*Summer20UL16MiniAODv2-*/MINIAODSIM status=*" | grep -v "Njet\|CP5down\|CP5up\|hdamp\|TTbb\|TTZ\|TTW\|TTH\|TTG\|mtop\|width\|CP5CR\|erd\|Mtt\|TT4b\|TTTT\|FCNC\|LFV"
dasgoclient --query="dataset dataset=/ST_*/*Summer20UL16MiniAODv2-*/MINIAODSIM status=*" | grep -v "mtop\|wtop\|anomw\|CP5CR\|erd\|comphep\|hdamp\|CP5up\|CP5down"
dasgoclient --query="dataset dataset=/WJetsToQQ_HT*/*Summer20UL16MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/ZJetsToQQ_HT*/*Summer20UL16MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/WJetsToLNu_HT*/*Summer20UL16MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/DYJetsToLL_M-50_HT*/*Summer20UL16MiniAODv2-*/MINIAODSIM status=*"

dasgoclient --query="dataset dataset=/QCD_HT*/*Summer20UL16MiniAODAPVv2-*/MINIAODSIM status=*" | grep -v "BGenFilter"
dasgoclient --query="dataset dataset=/TT*/*Summer20UL16MiniAODAPVv2-*/MINIAODSIM status=*" | grep -v "Njet\|CP5down\|CP5up\|hdamp\|TTbb\|TTZ\|TTW\|TTH\|TTG\|mtop\|width\|CP5CR\|erd\|Mtt\|TT4b\|TTTT\|FCNC"
dasgoclient --query="dataset dataset=/ST_*/*Summer20UL16MiniAODAPVv2-*/MINIAODSIM status=*" | grep -v "mtop\|wtop\|anomw\|CP5CR\|erd\|comphep\|hdamp\|CP5up\|CP5down"
dasgoclient --query="dataset dataset=/WJetsToQQ_HT*/*Summer20UL16MiniAODAPVv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/ZJetsToQQ_HT*/*Summer20UL16MiniAODAPVv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/WJetsToLNu_HT*/*Summer20UL16MiniAODAPVv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/DYJetsToLL_M-50_HT*/*Summer20UL16MiniAODAPVv2-*/MINIAODSIM status=*"

dasgoclient --query="dataset dataset=/QCD_HT*/*Summer20UL17MiniAODv2-*/MINIAODSIM status=*" | grep -v "BGenFilter"
dasgoclient --query="dataset dataset=/WJetsToQQ_HT*/*Summer20UL17MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/ZJetsToQQ_HT*/*Summer20UL17MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/TT*/*Summer20UL17MiniAODv2-*/MINIAODSIM status=*" | grep -v "Njet\|CP5down\|CP5up\|hdamp\|TTbb\|TTZ\|TTW\|TTH\|TTG\|mtop\|width\|CP5CR\|erd\|Mtt\|TT4b\|TTTT\|FCNC"
dasgoclient --query="dataset dataset=/ST_*/*Summer20UL17MiniAODv2-*/MINIAODSIM status=*" | grep -v "mtop\|wtop\|anomw\|CP5CR\|erd\|comphep\|hdamp\|CP5up\|CP5down"
dasgoclient --query="dataset dataset=/WJetsToLNu_HT*/*Summer20UL17MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/DYJetsToLL_M-50_HT*/*Summer20UL17MiniAODv2-*/MINIAODSIM status=*"

dasgoclient --query="dataset dataset=/QCD_HT*/*Summer20UL18MiniAODv2-*/MINIAODSIM status=*" | grep -v "BGenFilter"
dasgoclient --query="dataset dataset=/WJetsToQQ_HT*/*Summer20UL18MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/ZJetsToQQ_HT*/*Summer20UL18MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/TT*/*Summer20UL18MiniAODv2-*/MINIAODSIM status=*" | grep -v "Njet\|CP5down\|CP5up\|hdamp\|TTbb\|TTZ\|TTW\|TTH\|TTG\|mtop\|width\|CP5CR\|erd\|Mtt\|TT4b\|TTTT\|FCNC"
dasgoclient --query="dataset dataset=/ST_*/*Summer20UL18MiniAODv2-*/MINIAODSIM status=*" | grep -v "mtop\|wtop\|anomw\|CP5CR\|erd\|comphep\|hdamp\|CP5up\|CP5down\|FCNC"
dasgoclient --query="dataset dataset=/WJetsToLNu_HT*/*Summer20UL18MiniAODv2-*/MINIAODSIM status=*"
dasgoclient --query="dataset dataset=/DYJetsToLL_M-50_HT*/*Summer20UL18MiniAODv2-*/MINIAODSIM status=*"

dasgoclient --query="dataset dataset=/JetHT/*UL*MiniAODv2*/MINIAOD"
dasgoclient --query="dataset dataset=/SingleMuon/*UL*MiniAODv2*/MINIAOD"
