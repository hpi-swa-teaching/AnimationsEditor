as yet unclassified
testContents
	| propertyWrapper propertyItem subpropertyItem |
	
	propertyItem := AnimationsEditorProperty new.
	subpropertyItem := AnimationsEditorPropertyPosition new.
	propertyWrapper := AnimationsEditorPropertyWrapper new.

	propertyItem subproperties at: 'property' put: subpropertyItem.
	propertyWrapper setItem: propertyItem.
	self assert: (propertyWrapper contents size = 0) not.