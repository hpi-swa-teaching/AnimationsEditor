as yet unclassified
testUpdateTargetColor
	| propertyColor |
	
	propertyColor := self animationsEditorInstance propertyList second subproperties at: #color.
	propertyColor update: Color red. 
	self assert: (propertyColor targetColor) equals: Color red.
	