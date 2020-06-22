initialize-release
testTreeSpec
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	self assert: (animationsEditorInstance propertyList size = 1). 
	
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	self assert: (animationsEditorInstance propertyList size = 2). 
	
	animationsEditorInstance windowReference abandon.
	morph abandon.