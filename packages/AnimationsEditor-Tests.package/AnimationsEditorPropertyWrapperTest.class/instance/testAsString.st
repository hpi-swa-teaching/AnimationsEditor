testing
testAsString
	| assignedTitle |
	
	assignedTitle := 'Ich bin ein title'.
	self property title: assignedTitle.
	self propertyWrapper setItem: self property.
	self assert: self propertyWrapper asString = assignedTitle.