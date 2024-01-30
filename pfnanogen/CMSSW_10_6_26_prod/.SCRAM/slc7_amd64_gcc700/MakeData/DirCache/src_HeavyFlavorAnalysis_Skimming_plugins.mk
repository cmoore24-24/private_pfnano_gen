ifeq ($(strip $(Tau3MuSkim)),)
Tau3MuSkim := self/src/HeavyFlavorAnalysis/Skimming/plugins
PLUGINS:=yes
Tau3MuSkim_files := $(patsubst src/HeavyFlavorAnalysis/Skimming/plugins/%,%,$(foreach file,Tau3MuSkim.cc,$(eval xfile:=$(wildcard src/HeavyFlavorAnalysis/Skimming/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/HeavyFlavorAnalysis/Skimming/plugins/$(file). Please fix src/HeavyFlavorAnalysis/Skimming/plugins/BuildFile.))))
Tau3MuSkim_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyFlavorAnalysis/Skimming/plugins/BuildFile
Tau3MuSkim_LOC_USE := self  FWCore/Framework FWCore/ParameterSet HeavyFlavorAnalysis/Skimming
Tau3MuSkim_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,Tau3MuSkim,Tau3MuSkim,$(SCRAMSTORENAME_LIB),src/HeavyFlavorAnalysis/Skimming/plugins))
Tau3MuSkim_PACKAGE := self/src/HeavyFlavorAnalysis/Skimming/plugins
ALL_PRODS += Tau3MuSkim
HeavyFlavorAnalysis/Skimming_forbigobj+=Tau3MuSkim
Tau3MuSkim_INIT_FUNC        += $$(eval $$(call Library,Tau3MuSkim,src/HeavyFlavorAnalysis/Skimming/plugins,src_HeavyFlavorAnalysis_Skimming_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
Tau3MuSkim_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,Tau3MuSkim,src/HeavyFlavorAnalysis/Skimming/plugins))
endif
ALL_COMMONRULES += src_HeavyFlavorAnalysis_Skimming_plugins
src_HeavyFlavorAnalysis_Skimming_plugins_parent := HeavyFlavorAnalysis/Skimming
src_HeavyFlavorAnalysis_Skimming_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyFlavorAnalysis_Skimming_plugins,src/HeavyFlavorAnalysis/Skimming/plugins,PLUGINS))
