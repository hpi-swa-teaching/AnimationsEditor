testing
testActivatedPropertyIsActivated

	self animationsEditorInstance selectedTreeNode activateProperty.
	self assert: self animationsEditorInstance selectedTreeNode isActivated.
	