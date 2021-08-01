testing
testHasContents
	| subpropertyItem |
	
	subpropertyItem := AnimationsEditorProperty new.
	self property subproperties at: 'property' put: subpropertyItem.
	self propertyWrapper setItem: self property.
	self assert: self propertyWrapper hasContents = true.