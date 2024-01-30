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
