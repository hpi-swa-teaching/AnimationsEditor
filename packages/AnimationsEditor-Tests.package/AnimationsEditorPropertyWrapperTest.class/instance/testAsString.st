as yet unclassified
testAsString
	| propertyWrapper propertyItem assignedTitle |
	
	propertyItem := AnimationsEditorProperty new.
	propertyWrapper := AnimationsEditorPropertyWrapper new.
	assignedTitle := 'Ich bin ein title'.
	
	propertyItem title: assignedTitle.
	propertyWrapper setItem: propertyItem.
	
	self assert: (propertyWrapper asString = assignedTitle).