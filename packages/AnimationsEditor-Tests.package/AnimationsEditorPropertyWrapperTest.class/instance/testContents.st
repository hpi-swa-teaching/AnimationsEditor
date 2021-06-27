as yet unclassified
testContents
	| subpropertyItem |
	subpropertyItem := AnimationsEditorProperty new.
	self property subproperties at: 'property' put: subpropertyItem.
	self propertyWrapper setItem: self property.
	self assert: self propertyWrapper contents size > 0.