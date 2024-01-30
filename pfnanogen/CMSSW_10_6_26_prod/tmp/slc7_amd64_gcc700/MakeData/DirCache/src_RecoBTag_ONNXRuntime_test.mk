ALL_COMMONRULES += src_RecoBTag_ONNXRuntime_test
src_RecoBTag_ONNXRuntime_test_parent := RecoBTag/ONNXRuntime
src_RecoBTag_ONNXRuntime_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoBTag_ONNXRuntime_test,src/RecoBTag/ONNXRuntime/test,TEST))
