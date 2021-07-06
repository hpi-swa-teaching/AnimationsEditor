testing
testTargetColorFromString
	self propertyColor targetColorFromText: 'FF0000'. 
	self assert: self propertyColor targetColor equals: Color red. 
	