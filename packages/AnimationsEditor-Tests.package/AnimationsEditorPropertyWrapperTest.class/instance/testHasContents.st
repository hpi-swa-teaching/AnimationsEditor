as yet unclassified
testHasContents
	| propertyWrapper propertyItem subpropertyItem |
	
	propertyItem := AnimationsEditorProperty new.
	subpropertyItem := AnimationsEditorProperty new.
	propertyWrapper := AnimationsEditorPropertyWrapper new.
	
	propertyItem subproperties at: 'property' put: subpropertyItem.
	propertyWrapper setItem: propertyItem.
	
	self assert: (propertyWrapper hasContents = true).