as yet unclassified
testUpdateTargetColor
	| propertyColor |
	
	propertyColor= self animationsEditorInstance propertyList second.
	propertyColor colorPicker updateColor: Color blue feedbackColor: propertyColor colorPicker selectedColor.
	propertyColor updateTargetColor.
	self assert: (propertyColor targetColor equals: Color blue).
	