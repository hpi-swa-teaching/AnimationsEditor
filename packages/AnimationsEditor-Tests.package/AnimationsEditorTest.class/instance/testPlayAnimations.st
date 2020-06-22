initialize-release
testPlayAnimations
	| animationsEditorInstance morph positionProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	positionProperty := ((animationsEditorInstance propertyList at: 2) subproperties at: 1).
	positionProperty positionX: 555.
	positionProperty positionY: 555.

	animationsEditorInstance playAnimations.	
	animationsEditorInstance windowReference abandon.
	morph abandon.
	self assert: true. "no errors = good"