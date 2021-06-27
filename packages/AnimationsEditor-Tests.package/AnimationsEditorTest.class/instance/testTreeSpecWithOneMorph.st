testing
testTreeSpecWithOneMorph
	| animationsEditorInstance morph |
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new openInWorld.
	
	animationsEditorInstance addTargetMorph: morph.
	self assert: animationsEditorInstance propertyList size = 2.
	
	animationsEditorInstance windowReference abandon.
	morph abandon.