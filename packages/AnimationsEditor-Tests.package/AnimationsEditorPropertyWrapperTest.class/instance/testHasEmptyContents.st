testing
testHasEmptyContents
	self propertyWrapper setItem: self property.
	self assert: self propertyWrapper hasContents = false.