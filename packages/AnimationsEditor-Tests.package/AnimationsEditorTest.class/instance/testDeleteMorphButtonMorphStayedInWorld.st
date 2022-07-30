testing
testDeleteMorphButtonMorphStayedInWorld
	
	self animationsEditorInstance deleteMorph.
	self assert: self morph isInWorld.