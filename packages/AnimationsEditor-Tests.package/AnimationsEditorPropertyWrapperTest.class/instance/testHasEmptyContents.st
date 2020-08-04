as yet unclassified
testHasEmptyContents
	| propertyWrapper propertyItem |
	propertyItem := AnimationsEditorProperty new.
	propertyWrapper := AnimationsEditorPropertyWrapper new.
	
	propertyWrapper setItem: propertyItem.
	
	self assert: (propertyWrapper hasContents = false).