testing
testMorphClosedInWorldTreeSpecUpdated
	|morph goalReached monitor producer finished|
	morph:= Morph new.
	morph openInWorld.
	
	self animationsEditorInstance selectedTreeNode: (self animationsEditorInstance addTargetMorph: morph).
	self deleteMorph: morph.
	goalReached := false.
	finished := Semaphore new.
	monitor := Monitor new.
	producer := [
		[monitor critical:
			[monitor waitUntil: [self morphIsDeleted].
			monitor signal]]
			whileFalse.
			finished signal.
		self assert: self animationsEditorInstance propertyTreeMorph submorphs first submorphs size = 1].