as yet unclassified
testUpdateTargetColorIsCalled
	| propertyColor |
	
	propertyColor= self animationsEditorInstance propertyList second.
	propertyColor colorPicker updateColor: Color blue feedbackColor: propertyColor colorPicker selectedColor.
	self assert: (propertyColor targetColor equals: Color blue).
	