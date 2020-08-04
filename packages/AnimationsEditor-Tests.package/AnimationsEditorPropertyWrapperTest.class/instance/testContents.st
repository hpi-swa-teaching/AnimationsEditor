as yet unclassified
testContents
	| propertyWrapper propertyItem subpropertyItem |
	
	propertyItem := AnimationsEditorProperty new.
	subpropertyItem := AnimationsEditorProperty new.
	propertyWrapper := AnimationsEditorPropertyWrapper new.

	propertyItem subproperties add: subpropertyItem.
	propertyWrapper setItem: propertyItem.
	self assert: (propertyWrapper contents size = 0) not.