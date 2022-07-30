testing
testDeleteMorphButtonTreeSpecUpdated
	|morph|
	morph:= Morph new.
	morph openInWorld.
	
	self animationsEditorInstance selectedTreeNode: (self animationsEditorInstance addTargetMorph: morph).
	self animationsEditorInstance deleteMorph.
	self assert: self animationsEditorInstance propertyTreeMorph submorphs first submorphs size = 1.