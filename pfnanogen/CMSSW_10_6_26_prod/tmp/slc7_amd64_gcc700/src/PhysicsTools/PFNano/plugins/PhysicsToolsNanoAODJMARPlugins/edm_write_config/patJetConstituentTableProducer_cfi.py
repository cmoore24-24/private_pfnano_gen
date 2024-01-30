import FWCore.ParameterSet.Config as cms

patJetConstituentTableProducer = cms.EDProducer('PatJetConstituentTableProducer',
  name = cms.string('JetPFCands'),
  nameSV = cms.string('JetSV'),
  idx_name = cms.string('candIdx'),
  idx_nameSV = cms.string('svIdx'),
  jet_radius = cms.double(1),
  readBtag = cms.bool(True),
  jets = cms.InputTag('slimmedJetsAK8'),
  vertices = cms.InputTag('offlineSlimmedPrimaryVertices'),
  candidates = cms.InputTag('packedPFCandidates'),
  secondary_vertices = cms.InputTag('slimmedSecondaryVertices')
)