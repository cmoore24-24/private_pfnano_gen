ALL_SUBSYSTEMS+=HeavyFlavorAnalysis
subdirs_src_HeavyFlavorAnalysis = src_HeavyFlavorAnalysis_Skimming
ALL_PACKAGES += HeavyFlavorAnalysis/Skimming
subdirs_src_HeavyFlavorAnalysis_Skimming := src_HeavyFlavorAnalysis_Skimming_interface src_HeavyFlavorAnalysis_Skimming_plugins src_HeavyFlavorAnalysis_Skimming_python src_HeavyFlavorAnalysis_Skimming_src src_HeavyFlavorAnalysis_Skimming_test
ifeq ($(strip $(PyHeavyFlavorAnalysisSkimming)),)
PyHeavyFlavorAnalysisSkimming := self/src/HeavyFlavorAnalysis/Skimming/python
src_HeavyFlavorAnalysis_Skimming_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyFlavorAnalysis/Skimming/python)
PyHeavyFlavorAnalysisSkimming_files := $(patsubst src/HeavyFlavorAnalysis/Skimming/python/%,%,$(wildcard $(foreach dir,src/HeavyFlavorAnalysis/Skimming/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyFlavorAnalysisSkimming_LOC_USE := self  
PyHeavyFlavorAnalysisSkimming_PACKAGE := self/src/HeavyFlavorAnalysis/Skimming/python
ALL_PRODS += PyHeavyFlavorAnalysisSkimming
PyHeavyFlavorAnalysisSkimming_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyFlavorAnalysisSkimming,src/HeavyFlavorAnalysis/Skimming/python,src_HeavyFlavorAnalysis_Skimming_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyHeavyFlavorAnalysisSkimming,src/HeavyFlavorAnalysis/Skimming/python))
endif
ALL_COMMONRULES += src_HeavyFlavorAnalysis_Skimming_python
src_HeavyFlavorAnalysis_Skimming_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyFlavorAnalysis_Skimming_python,src/HeavyFlavorAnalysis/Skimming/python,PYTHON))
ALL_COMMONRULES += src_HeavyFlavorAnalysis_Skimming_test
src_HeavyFlavorAnalysis_Skimming_test_parent := HeavyFlavorAnalysis/Skimming
src_HeavyFlavorAnalysis_Skimming_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyFlavorAnalysis_Skimming_test,src/HeavyFlavorAnalysis/Skimming/test,TEST))
ALL_SUBSYSTEMS+=PhysicsTools
subdirs_src_PhysicsTools = src_PhysicsTools_PatAlgos src_PhysicsTools_PFNano
ALL_PACKAGES += PhysicsTools/PFNano
subdirs_src_PhysicsTools_PFNano := src_PhysicsTools_PFNano_plugins src_PhysicsTools_PFNano_python src_PhysicsTools_PFNano_test
ifeq ($(strip $(PyPhysicsToolsPFNano)),)
PyPhysicsToolsPFNano := self/src/PhysicsTools/PFNano/python
src_PhysicsTools_PFNano_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PFNano/python)
PyPhysicsToolsPFNano_files := $(patsubst src/PhysicsTools/PFNano/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PFNano/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPFNano_LOC_USE := self  
PyPhysicsToolsPFNano_PACKAGE := self/src/PhysicsTools/PFNano/python
ALL_PRODS += PyPhysicsToolsPFNano
PyPhysicsToolsPFNano_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPFNano,src/PhysicsTools/PFNano/python,src_PhysicsTools_PFNano_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPFNano,src/PhysicsTools/PFNano/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PFNano_python
src_PhysicsTools_PFNano_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PFNano_python,src/PhysicsTools/PFNano/python,PYTHON))
ALL_COMMONRULES += src_PhysicsTools_PFNano_test
src_PhysicsTools_PFNano_test_parent := PhysicsTools/PFNano
src_PhysicsTools_PFNano_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PFNano_test,src/PhysicsTools/PFNano/test,TEST))
ALL_PACKAGES += PhysicsTools/PatAlgos
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_plugins src_PhysicsTools_PatAlgos_python src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_test
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
src_PhysicsTools_PatAlgos_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
PyPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatAlgos_LOC_USE := self  
PyPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/python
ALL_PRODS += PyPhysicsToolsPatAlgos
PyPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python,src_PhysicsTools_PatAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_python
src_PhysicsTools_PatAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_python,src/PhysicsTools/PatAlgos/python,PYTHON))
src_PhysicsTools_PatAlgos_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/PatAlgos/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_PatAlgos_scripts,src/PhysicsTools/PatAlgos/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(runtestPhysicsToolsPatAlgos)),)
runtestPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/test
runtestPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,runtestPhysicsToolsPatAlgos.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
runtestPhysicsToolsPatAlgos_TEST_RUNNER_CMD :=  runtestPhysicsToolsPatAlgos  /bin/bash PhysicsTools/PatAlgos/test runtests.sh
runtestPhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
runtestPhysicsToolsPatAlgos_LOC_USE := self  FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
runtestPhysicsToolsPatAlgos_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/test))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsPatAlgos_testAnalyzers_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ALL_SUBSYSTEMS+=RecoBTag
subdirs_src_RecoBTag = src_RecoBTag_ONNXRuntime
ALL_PACKAGES += RecoBTag/ONNXRuntime
subdirs_src_RecoBTag_ONNXRuntime := src_RecoBTag_ONNXRuntime_plugins src_RecoBTag_ONNXRuntime_python src_RecoBTag_ONNXRuntime_test src_RecoBTag_ONNXRuntime_src
ifeq ($(strip $(PyRecoBTagONNXRuntime)),)
PyRecoBTagONNXRuntime := self/src/RecoBTag/ONNXRuntime/python
src_RecoBTag_ONNXRuntime_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoBTag/ONNXRuntime/python)
PyRecoBTagONNXRuntime_files := $(patsubst src/RecoBTag/ONNXRuntime/python/%,%,$(wildcard $(foreach dir,src/RecoBTag/ONNXRuntime/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoBTagONNXRuntime_LOC_USE := self  
PyRecoBTagONNXRuntime_PACKAGE := self/src/RecoBTag/ONNXRuntime/python
ALL_PRODS += PyRecoBTagONNXRuntime
PyRecoBTagONNXRuntime_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoBTagONNXRuntime,src/RecoBTag/ONNXRuntime/python,src_RecoBTag_ONNXRuntime_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoBTagONNXRuntime,src/RecoBTag/ONNXRuntime/python))
endif
ALL_COMMONRULES += src_RecoBTag_ONNXRuntime_python
src_RecoBTag_ONNXRuntime_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoBTag_ONNXRuntime_python,src/RecoBTag/ONNXRuntime/python,PYTHON))
ALL_COMMONRULES += src_RecoBTag_ONNXRuntime_test
src_RecoBTag_ONNXRuntime_test_parent := RecoBTag/ONNXRuntime
src_RecoBTag_ONNXRuntime_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoBTag_ONNXRuntime_test,src/RecoBTag/ONNXRuntime/test,TEST))
ALL_SUBSYSTEMS+=JMEAnalysis
subdirs_src_JMEAnalysis = src_JMEAnalysis_JetToolbox
ALL_PACKAGES += JMEAnalysis/JetToolbox
subdirs_src_JMEAnalysis_JetToolbox := src_JMEAnalysis_JetToolbox_plugins src_JMEAnalysis_JetToolbox_python src_JMEAnalysis_JetToolbox_test
ifeq ($(strip $(PyJMEAnalysisJetToolbox)),)
PyJMEAnalysisJetToolbox := self/src/JMEAnalysis/JetToolbox/python
src_JMEAnalysis_JetToolbox_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JMEAnalysis/JetToolbox/python)
PyJMEAnalysisJetToolbox_files := $(patsubst src/JMEAnalysis/JetToolbox/python/%,%,$(wildcard $(foreach dir,src/JMEAnalysis/JetToolbox/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJMEAnalysisJetToolbox_LOC_USE := self  
PyJMEAnalysisJetToolbox_PACKAGE := self/src/JMEAnalysis/JetToolbox/python
ALL_PRODS += PyJMEAnalysisJetToolbox
PyJMEAnalysisJetToolbox_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJMEAnalysisJetToolbox,src/JMEAnalysis/JetToolbox/python,src_JMEAnalysis_JetToolbox_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJMEAnalysisJetToolbox,src/JMEAnalysis/JetToolbox/python))
endif
ALL_COMMONRULES += src_JMEAnalysis_JetToolbox_python
src_JMEAnalysis_JetToolbox_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JMEAnalysis_JetToolbox_python,src/JMEAnalysis/JetToolbox/python,PYTHON))
ALL_COMMONRULES += src_JMEAnalysis_JetToolbox_test
src_JMEAnalysis_JetToolbox_test_parent := JMEAnalysis/JetToolbox
src_JMEAnalysis_JetToolbox_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JMEAnalysis_JetToolbox_test,src/JMEAnalysis/JetToolbox/test,TEST))
