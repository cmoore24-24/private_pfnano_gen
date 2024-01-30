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
ifeq ($(strip $(GeneratorInterfaceCore_plugins)),)
GeneratorInterfaceCore_plugins := self/src/GeneratorInterface/Core/plugins
GeneratorInterfaceCore_plugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities SimDataFormats/GeneratorProducts GeneratorInterface/Core FWCore/SharedMemory
ALL_EXTERNAL_PLUGIN_PRODS += GeneratorInterfaceCore_plugins
GeneratorInterface/Core_relbigobj+=GeneratorInterfaceCore_plugins
endif
ifeq ($(strip $(GeneratorInterface/Core)),)
GeneratorInterfaceCore := self/GeneratorInterface/Core
GeneratorInterface/Core := GeneratorInterfaceCore
GeneratorInterfaceCore_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceCore_EX_USE := $(foreach d, self cmssw FWCore/Concurrency FWCore/ServiceRegistry FWCore/Utilities FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/LHEInterface heppdt boost clhep lhapdf f77compiler root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceCore_EX_LIB   := GeneratorInterfaceCore
ALL_EXTERNAL_PRODS += GeneratorInterfaceCore
GeneratorInterfaceCore_CLASS := LIBRARY
GeneratorInterface/Core_relbigobj+=GeneratorInterfaceCore
endif
ifeq ($(strip $(GeneratorInterface/SherpaInterface)),)
GeneratorInterfaceSherpaInterface := self/GeneratorInterface/SherpaInterface
GeneratorInterface/SherpaInterface := GeneratorInterfaceSherpaInterface
GeneratorInterfaceSherpaInterface_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceSherpaInterface_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimDataFormats/GeneratorProducts GeneratorInterface/Core GeneratorInterface/ExternalDecays GeneratorInterface/Pythia6Interface clhep sherpa FWCore/Services zlib,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += GeneratorInterfaceSherpaInterface
GeneratorInterfaceSherpaInterface_CLASS := LIBRARY
GeneratorInterface/SherpaInterface_relbigobj+=GeneratorInterfaceSherpaInterface
endif
