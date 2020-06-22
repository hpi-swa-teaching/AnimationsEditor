initialize-release
testSelectMorphByHand
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new.
	morph openInHand.

	animationsEditorInstance selectMorphByHand.
	animationsEditorInstance handleListenEvent: nil.
		
	animationsEditorInstance windowReference abandon.
	morph abandon.
	self assert: true. "no errors = good"