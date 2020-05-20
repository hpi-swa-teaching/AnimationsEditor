as yet unclassified
testEmptySubProperties
	| propertyItem |
	propertyItem := AnimationsEditorProperty new.
	
	self assert:
		(propertyItem hasSubproperties = false).