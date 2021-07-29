testing
testMessageNotEnoughKeyframes
	| positionProperty |
	
	positionProperty := self property subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	
	positionProperty playAnimationWithStartEnd: self animationsEditorInstance propertyStartEnd.
	self assert: self animationsEditorInstance informationBarText = positionProperty messageNotEnoughKeyframes.