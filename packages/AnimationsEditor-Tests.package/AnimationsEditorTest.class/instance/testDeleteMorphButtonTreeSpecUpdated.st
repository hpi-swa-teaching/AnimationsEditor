testing
testDeleteMorphButtonTreeSpecUpdated
	|morph numberOfSubmorphs|
	
	morph:= Morph new.
	morph openInWorld.
	self animationsEditorInstance selectedTreeNode: (self animationsEditorInstance addTargetMorph: morph).
	numberOfSubmorphs := self numberOfSubmorphsInPropertyTreeMorph.
	self animationsEditorInstance deleteMorph.
	self assert: self numberOfSubmorphsInPropertyTreeMorph = (numberOfSubmorphs - 1).