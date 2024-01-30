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
