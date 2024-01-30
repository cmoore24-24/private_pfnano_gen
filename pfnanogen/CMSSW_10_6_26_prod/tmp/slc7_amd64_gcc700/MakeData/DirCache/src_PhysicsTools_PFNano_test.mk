ALL_COMMONRULES += src_PhysicsTools_PFNano_test
src_PhysicsTools_PFNano_test_parent := PhysicsTools/PFNano
src_PhysicsTools_PFNano_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PFNano_test,src/PhysicsTools/PFNano/test,TEST))
