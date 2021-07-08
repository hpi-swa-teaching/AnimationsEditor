testing
testUpdateTargetColor
	self propertyColor update: Color red.
	self assert: self propertyColor currentValue equals: Color red.