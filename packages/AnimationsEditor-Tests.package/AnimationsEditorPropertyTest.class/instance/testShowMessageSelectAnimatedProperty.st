testing
testShowMessageSelectAnimatedProperty
	self property addKeyframe.
	self assert: self animationsEditorInstance informationBarText = self property messageSelectAnimatedProperty.