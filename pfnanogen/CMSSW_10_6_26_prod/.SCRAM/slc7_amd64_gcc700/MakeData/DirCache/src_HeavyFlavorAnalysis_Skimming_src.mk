ifeq ($(strip $(HeavyFlavorAnalysis/Skimming)),)
ALL_COMMONRULES += src_HeavyFlavorAnalysis_Skimming_src
src_HeavyFlavorAnalysis_Skimming_src_parent := HeavyFlavorAnalysis/Skimming
src_HeavyFlavorAnalysis_Skimming_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_HeavyFlavorAnalysis_Skimming_src,src/HeavyFlavorAnalysis/Skimming/src,LIBRARY))
HeavyFlavorAnalysisSkimming := self/HeavyFlavorAnalysis/Skimming
HeavyFlavorAnalysis/Skimming := HeavyFlavorAnalysisSkimming
HeavyFlavorAnalysisSkimming_files := $(patsubst src/HeavyFlavorAnalysis/Skimming/src/%,%,$(wildcard $(foreach dir,src/HeavyFlavorAnalysis/Skimming/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyFlavorAnalysisSkimming_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyFlavorAnalysis/Skimming/BuildFile
HeavyFlavorAnalysisSkimming_LOC_USE := self  FWCore/MessageLogger FWCore/Framework FWCore/ParameterSet DataFormats/TrackReco DataFormats/MuonReco
HeavyFlavorAnalysisSkimming_EX_LIB   := HeavyFlavorAnalysisSkimming
HeavyFlavorAnalysisSkimming_EX_USE   := $(foreach d,$(HeavyFlavorAnalysisSkimming_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
HeavyFlavorAnalysisSkimming_PACKAGE := self/src/HeavyFlavorAnalysis/Skimming/src
ALL_PRODS += HeavyFlavorAnalysisSkimming
HeavyFlavorAnalysisSkimming_CLASS := LIBRARY
HeavyFlavorAnalysis/Skimming_forbigobj+=HeavyFlavorAnalysisSkimming
HeavyFlavorAnalysisSkimming_INIT_FUNC        += $$(eval $$(call Library,HeavyFlavorAnalysisSkimming,src/HeavyFlavorAnalysis/Skimming/src,src_HeavyFlavorAnalysis_Skimming_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
