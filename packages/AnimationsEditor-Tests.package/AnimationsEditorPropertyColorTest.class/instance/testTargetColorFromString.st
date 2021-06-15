as yet unclassified
testTargetColorFromString
	self propertyColor targetColorFromString: 'FF0000'. 
	self assert: self propertyColor targetColor equals: Color red. 
	