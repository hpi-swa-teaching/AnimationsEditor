testing
testTreeSpecWithOneMorph
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	self assert: animationsEditorInstance propertyList size = 1.
	animationsEditorInstance windowReference abandon.
	self deleteMorph: morph.