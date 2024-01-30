ifeq ($(strip $(PhotosppInterface)),)
PhotosppInterface := self/src/GeneratorInterface/PhotosInterface/plugins
PhotosppInterface_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager GeneratorInterface/PhotosInterface photospp hepmc clhep
GeneratorInterface/PhotosInterface_relbigobj+=PhotosppInterface
endif
ifeq ($(strip $(PhotosInterfaceDefault)),)
PhotosInterfaceDefault := self/src/GeneratorInterface/PhotosInterface/plugins
PhotosInterfaceDefault_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager GeneratorInterface/PhotosInterface photos hepmc clhep
GeneratorInterface/PhotosInterface_relbigobj+=PhotosInterfaceDefault
endif
ifeq ($(strip $(PhysicsTools/JetMCAlgos)),)
PhysicsToolsJetMCAlgos := self/PhysicsTools/JetMCAlgos
PhysicsTools/JetMCAlgos := PhysicsToolsJetMCAlgos
PhysicsToolsJetMCAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsJetMCAlgos_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet PhysicsTools/JetMCUtils,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsJetMCAlgos_EX_LIB   := PhysicsToolsJetMCAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsJetMCAlgos
PhysicsToolsJetMCAlgos_CLASS := LIBRARY
PhysicsTools/JetMCAlgos_relbigobj+=PhysicsToolsJetMCAlgos
endif
ifeq ($(strip $(PhysicsToolsJetMCAlgosPlugins)),)
PhysicsToolsJetMCAlgosPlugins := self/src/PhysicsTools/JetMCAlgos/plugins
PhysicsToolsJetMCAlgosPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CommonTools/Utils PhysicsTools/JetMCAlgos PhysicsTools/JetMCUtils PhysicsTools/HepMCCandAlgos SimDataFormats/JetMatching SimDataFormats/GeneratorProducts DataFormats/HepMCCandidate fastjet
PhysicsTools/JetMCAlgos_relbigobj+=PhysicsToolsJetMCAlgosPlugins
endif
ifeq ($(strip $(DQM/HcalTasks)),)
DQMHcalTasks := self/DQM/HcalTasks
DQM/HcalTasks := DQMHcalTasks
DQMHcalTasks_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMHcalTasks_EX_USE := $(foreach d, self cmssw DataFormats/HcalRecHit DataFormats/HcalDigi TBDataFormats/HcalTBObjects EventFilter/HcalRawToDigi CalibFormats/HcalObjects CalibCalorimetry/HcalAlgos Geometry/HcalTowerAlgo FWCore/ParameterSet FWCore/Framework FWCore/MessageLogger DQMServices/Core rootmath DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger DataFormats/Math DataFormats/Common DataFormats/L1Trigger DataFormats/L1GlobalCaloTrigger DataFormats/Candidate L1Trigger/RegionalCaloTrigger DataFormats/L1CaloTrigger DataFormats/EcalDigi DataFormats/METReco DataFormats/JetReco DataFormats/TrackReco RecoMET/METAlgorithms CondFormats/RunInfo DQM/HcalCommon,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMHcalTasks_EX_LIB   := DQMHcalTasks
ALL_EXTERNAL_PRODS += DQMHcalTasks
DQMHcalTasks_CLASS := LIBRARY
DQM/HcalTasks_relbigobj+=DQMHcalTasks
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
ifeq ($(strip $(GeneratorInterface/PhotosInterface)),)
GeneratorInterfacePhotosInterface := self/GeneratorInterface/PhotosInterface
GeneratorInterface/PhotosInterface := GeneratorInterfacePhotosInterface
GeneratorInterfacePhotosInterface_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfacePhotosInterface_EX_USE := $(foreach d, self cmssw FWCore/ParameterSet FWCore/Framework FWCore/PluginManager hepmc clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePhotosInterface_EX_LIB   := GeneratorInterfacePhotosInterface
ALL_EXTERNAL_PRODS += GeneratorInterfacePhotosInterface
GeneratorInterfacePhotosInterface_CLASS := LIBRARY
GeneratorInterface/PhotosInterface_relbigobj+=GeneratorInterfacePhotosInterface
endif
ifeq ($(strip $(DQMHcalTasksAuto)),)
DQMHcalTasksAuto := self/src/DQM/HcalTasks/plugins
DQMHcalTasksAuto_LOC_USE := self cmssw DataFormats/HcalRecHit DataFormats/HcalDigi TBDataFormats/HcalTBObjects EventFilter/HcalRawToDigi CalibFormats/HcalObjects CalibCalorimetry/HcalAlgos Geometry/HcalTowerAlgo FWCore/ParameterSet FWCore/Framework FWCore/MessageLogger DQMServices/Core rootmath DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger DataFormats/Math DataFormats/Common DataFormats/L1Trigger DataFormats/L1GlobalCaloTrigger DataFormats/Candidate L1Trigger/RegionalCaloTrigger DataFormats/L1CaloTrigger DataFormats/EcalDigi DataFormats/METReco DataFormats/JetReco DataFormats/TrackReco RecoMET/METAlgorithms CondFormats/RunInfo DQM/HcalCommon DQM/HcalTasks
DQM/HcalTasks_relbigobj+=DQMHcalTasksAuto
endif
