testing
testDeactivatedPropertyIsDeactivated
	| property |
	
	property := self animationsEditorInstance selectedTreeNode.
	property activateProperty.
	property deactivateProperty.
	self assert: self animationsEditorInstance selectedTreeNode isActivated not.