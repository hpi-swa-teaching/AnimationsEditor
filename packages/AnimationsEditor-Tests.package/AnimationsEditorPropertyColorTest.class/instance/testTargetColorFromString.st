as yet unclassified
testTargetColorFromString
	| propertyColor |
	
	propertyColor := self animationsEditorInstance propertyList second subproperties at: #color.
	propertyColor targetColorFromString: 'FF0000'. 
	self assert: propertyColor targetColor equals: Color red. 
	