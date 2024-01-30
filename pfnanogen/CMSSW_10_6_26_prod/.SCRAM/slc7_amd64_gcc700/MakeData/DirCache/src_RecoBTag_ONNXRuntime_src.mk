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
