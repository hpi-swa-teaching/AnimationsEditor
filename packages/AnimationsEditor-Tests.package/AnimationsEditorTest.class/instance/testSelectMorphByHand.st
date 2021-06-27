testing
testSelectMorphByHand
	| morph |
	morph := Morph new.
	morph openInHand.

	self animationsEditorInstance selectMorphByHand.
	self animationsEditorInstance handleListenEvent: nil.
	morph abandon.

	self assert: true.