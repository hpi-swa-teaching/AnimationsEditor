as yet unclassified
testUpdateTargetColor
	self propertyColor update: Color red.
	self assert: self propertyColor targetColor equals: Color red.