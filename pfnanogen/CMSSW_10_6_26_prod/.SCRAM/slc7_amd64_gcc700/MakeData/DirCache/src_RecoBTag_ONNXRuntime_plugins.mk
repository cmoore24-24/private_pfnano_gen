ifeq ($(strip $(RecoBTagONNXRuntimePlugins)),)
RecoBTagONNXRuntimePlugins := self/src/RecoBTag/ONNXRuntime/plugins
PLUGINS:=yes
RecoBTagONNXRuntimePlugins_files := $(patsubst src/RecoBTag/ONNXRuntime/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoBTag/ONNXRuntime/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoBTag/ONNXRuntime/plugins/$(file). Please fix src/RecoBTag/ONNXRuntime/plugins/BuildFile.))))
RecoBTagONNXRuntimePlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoBTag/ONNXRuntime/plugins/BuildFile
RecoBTagONNXRuntimePlugins_LOC_USE := self  FWCore/Framework json DataFormats/BTauReco PhysicsTools/ONNXRuntime RecoBTag/FeatureTools RecoBTag/ONNXRuntime
RecoBTagONNXRuntimePlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoBTagONNXRuntimePlugins,RecoBTagONNXRuntimePlugins,$(SCRAMSTORENAME_LIB),src/RecoBTag/ONNXRuntime/plugins))
RecoBTagONNXRuntimePlugins_PACKAGE := self/src/RecoBTag/ONNXRuntime/plugins
ALL_PRODS += RecoBTagONNXRuntimePlugins
RecoBTag/ONNXRuntime_forbigobj+=RecoBTagONNXRuntimePlugins
RecoBTagONNXRuntimePlugins_INIT_FUNC        += $$(eval $$(call Library,RecoBTagONNXRuntimePlugins,src/RecoBTag/ONNXRuntime/plugins,src_RecoBTag_ONNXRuntime_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoBTagONNXRuntimePlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoBTagONNXRuntimePlugins,src/RecoBTag/ONNXRuntime/plugins))
endif
ALL_COMMONRULES += src_RecoBTag_ONNXRuntime_plugins
src_RecoBTag_ONNXRuntime_plugins_parent := RecoBTag/ONNXRuntime
src_RecoBTag_ONNXRuntime_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoBTag_ONNXRuntime_plugins,src/RecoBTag/ONNXRuntime/plugins,PLUGINS))
