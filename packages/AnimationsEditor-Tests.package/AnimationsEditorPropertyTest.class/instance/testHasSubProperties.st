as yet unclassified
testHasSubProperties
	| propertyItem subpropertyItem |
	
	propertyItem := AnimationsEditorProperty new.
	subpropertyItem := AnimationsEditorProperty new.
	propertyItem subproperties add: subpropertyItem.
	
	self assert: (propertyItem hasSubproperties = true).