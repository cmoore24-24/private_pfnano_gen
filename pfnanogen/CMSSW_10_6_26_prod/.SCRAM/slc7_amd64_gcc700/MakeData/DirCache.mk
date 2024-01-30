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
ifeq ($(strip $(PhysicsTools/PFNano)),)
src_PhysicsTools_PFNano := self/PhysicsTools/PFNano
PhysicsTools/PFNano  := src_PhysicsTools_PFNano
src_PhysicsTools_PFNano_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PFNano/BuildFile
src_PhysicsTools_PFNano_LOC_USE := DataFormats/NanoAOD boost DataFormats/Common self CommonTools/UtilAlgos DataFormats/Candidate DataFormats/StdDictionaries CommonTools/Utils FWCore/Common CommonTools/CandAlgos DataFormats/PatCandidates FWCore/Utilities
src_PhysicsTools_PFNano_EX_USE   := $(foreach d,$(src_PhysicsTools_PFNano_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_PhysicsTools_PFNano
src_PhysicsTools_PFNano_INIT_FUNC += $$(eval $$(call EmptyPackage,src_PhysicsTools_PFNano,src/PhysicsTools/PFNano))
endif

ifeq ($(strip $(PhysicsToolsNanoAODJMARPlugins)),)
PhysicsToolsNanoAODJMARPlugins := self/src/PhysicsTools/PFNano/plugins
PLUGINS:=yes
PhysicsToolsNanoAODJMARPlugins_files := $(patsubst src/PhysicsTools/PFNano/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PFNano/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PFNano/plugins/$(file). Please fix src/PhysicsTools/PFNano/plugins/BuildFile.))))
PhysicsToolsNanoAODJMARPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PFNano/plugins/BuildFile
PhysicsToolsNanoAODJMARPlugins_LOC_USE := self  FWCore/Framework FWCore/MessageLogger DataFormats/PatCandidates DataFormats/VertexReco DataFormats/NanoAOD CommonTools/Utils CommonTools/UtilAlgos CommonTools/CandAlgos RecoBTag/FeatureTools RecoJets/JetAlgorithms TrackingTools/Records roottmva fastjet fastjet-contrib
PhysicsToolsNanoAODJMARPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsNanoAODJMARPlugins,PhysicsToolsNanoAODJMARPlugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PFNano/plugins))
PhysicsToolsNanoAODJMARPlugins_PACKAGE := self/src/PhysicsTools/PFNano/plugins
ALL_PRODS += PhysicsToolsNanoAODJMARPlugins
PhysicsTools/PFNano_forbigobj+=PhysicsToolsNanoAODJMARPlugins
PhysicsToolsNanoAODJMARPlugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsNanoAODJMARPlugins,src/PhysicsTools/PFNano/plugins,src_PhysicsTools_PFNano_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsNanoAODJMARPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsNanoAODJMARPlugins,src/PhysicsTools/PFNano/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PFNano_plugins
src_PhysicsTools_PFNano_plugins_parent := PhysicsTools/PFNano
src_PhysicsTools_PFNano_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PFNano_plugins,src/PhysicsTools/PFNano/plugins,PLUGINS))
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PLUGINS:=yes
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE := self  PhysicsTools/PatAlgos PhysicsTools/TensorFlow FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent DataFormats/HepMCCandidate PhysicsTools/PatUtils CondFormats/JetMETObjects CommonTools/CandAlgos CommonTools/MVAUtils JetMETCorrections/Objects JetMETCorrections/JetCorrector TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/JetMatching SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/plugins))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsTools/PatAlgos_forbigobj+=PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsPatAlgos_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE := self  CommonTools/MVAUtils DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos Geometry/CaloTopology RecoEgamma/EgammaTools RecoTracker/DeDx CondFormats/HcalObjects CondFormats/EcalObjects clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(foreach d,$(PhysicsToolsPatAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_CLASS := LIBRARY
PhysicsTools/PatAlgos_forbigobj+=PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(RecoBTag/ONNXRuntime)),)
ALL_COMMONRULES += src_RecoBTag_ONNXRuntime_src
src_RecoBTag_ONNXRuntime_src_parent := RecoBTag/ONNXRuntime
src_RecoBTag_ONNXRuntime_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoBTag_ONNXRuntime_src,src/RecoBTag/ONNXRuntime/src,LIBRARY))
RecoBTagONNXRuntime := self/RecoBTag/ONNXRuntime
RecoBTag/ONNXRuntime := RecoBTagONNXRuntime
RecoBTagONNXRuntime_files := $(patsubst src/RecoBTag/ONNXRuntime/src/%,%,$(wildcard $(foreach dir,src/RecoBTag/ONNXRuntime/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoBTagONNXRuntime_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoBTag/ONNXRuntime/BuildFile
RecoBTagONNXRuntime_LOC_USE := self  DataFormats/BTauReco PhysicsTools/ONNXRuntime
RecoBTagONNXRuntime_EX_LIB   := RecoBTagONNXRuntime
RecoBTagONNXRuntime_EX_USE   := $(foreach d,$(RecoBTagONNXRuntime_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagONNXRuntime_PACKAGE := self/src/RecoBTag/ONNXRuntime/src
ALL_PRODS += RecoBTagONNXRuntime
RecoBTagONNXRuntime_CLASS := LIBRARY
RecoBTag/ONNXRuntime_forbigobj+=RecoBTagONNXRuntime
RecoBTagONNXRuntime_INIT_FUNC        += $$(eval $$(call Library,RecoBTagONNXRuntime,src/RecoBTag/ONNXRuntime/src,src_RecoBTag_ONNXRuntime_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(JMEAnalysisJetToolboxAuto)),)
JMEAnalysisJetToolboxAuto := self/src/JMEAnalysis/JetToolbox/plugins
PLUGINS:=yes
JMEAnalysisJetToolboxAuto_files := $(patsubst src/JMEAnalysis/JetToolbox/plugins/%,%,$(wildcard $(foreach dir,src/JMEAnalysis/JetToolbox/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JMEAnalysisJetToolboxAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/JMEAnalysis/JetToolbox/plugins/BuildFile
JMEAnalysisJetToolboxAuto_LOC_USE := self  FWCore/Framework FWCore/ParameterSet root boost DataFormats/Candidate DataFormats/JetReco DataFormats/PatCandidates DataFormats/StdDictionaries DataFormats/WrappedStdDictionaries SimDataFormats/GeneratorProducts FWCore/ServiceRegistry CommonTools/Utils CommonTools/UtilAlgos CondFormats/JetMETObjects
JMEAnalysisJetToolboxAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JMEAnalysisJetToolboxAuto,JMEAnalysisJetToolboxAuto,$(SCRAMSTORENAME_LIB),src/JMEAnalysis/JetToolbox/plugins))
JMEAnalysisJetToolboxAuto_PACKAGE := self/src/JMEAnalysis/JetToolbox/plugins
ALL_PRODS += JMEAnalysisJetToolboxAuto
JMEAnalysis/JetToolbox_forbigobj+=JMEAnalysisJetToolboxAuto
JMEAnalysisJetToolboxAuto_INIT_FUNC        += $$(eval $$(call Library,JMEAnalysisJetToolboxAuto,src/JMEAnalysis/JetToolbox/plugins,src_JMEAnalysis_JetToolbox_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
JMEAnalysisJetToolboxAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,JMEAnalysisJetToolboxAuto,src/JMEAnalysis/JetToolbox/plugins))
endif
ALL_COMMONRULES += src_JMEAnalysis_JetToolbox_plugins
src_JMEAnalysis_JetToolbox_plugins_parent := JMEAnalysis/JetToolbox
src_JMEAnalysis_JetToolbox_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JMEAnalysis_JetToolbox_plugins,src/JMEAnalysis/JetToolbox/plugins,PLUGINS))
