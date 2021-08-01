testing
testTargetColorFromString
	self property currentValueFromText: 'FF0000'. 
	self assert: self property currentValue equals: Color red. 
	