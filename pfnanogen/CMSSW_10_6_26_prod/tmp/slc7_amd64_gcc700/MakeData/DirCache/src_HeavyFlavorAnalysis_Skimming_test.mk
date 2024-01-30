ALL_COMMONRULES += src_HeavyFlavorAnalysis_Skimming_test
src_HeavyFlavorAnalysis_Skimming_test_parent := HeavyFlavorAnalysis/Skimming
src_HeavyFlavorAnalysis_Skimming_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyFlavorAnalysis_Skimming_test,src/HeavyFlavorAnalysis/Skimming/test,TEST))
