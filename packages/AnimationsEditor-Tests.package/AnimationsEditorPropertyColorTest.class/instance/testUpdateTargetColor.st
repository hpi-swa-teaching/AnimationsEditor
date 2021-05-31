as yet unclassified
testUpdateTargetColor
	| propertyColor |
	
	propertyColor := self animationsEditorInstance propertyList second subproperties at: #color.
	propertyColor update: Color blue. 
	self assert: (propertyColor targetColor) equals: Color blue.
	