testing
testTargetColorFromString
	self propertyColor currentValueFromText: 'FF0000'. 
	self assert: self propertyColor currentValue equals: Color red. 
	