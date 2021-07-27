testing
testUpdateTargetColor
	self property update: Color red.
	self assert: self property currentValue equals: Color red.