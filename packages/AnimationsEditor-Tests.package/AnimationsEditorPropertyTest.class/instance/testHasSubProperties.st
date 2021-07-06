testing
testHasSubProperties
	| propertyItem subpropertyItem |
	
	propertyItem := AnimationsEditorProperty new.
	subpropertyItem := AnimationsEditorProperty new.
	propertyItem subproperties at: 'property' put: subpropertyItem.
	
	self assert: (propertyItem hasSubproperties = true).