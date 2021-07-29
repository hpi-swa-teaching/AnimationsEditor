testing
testAddKeyframe
	| positionProperty oldSize |
	
	positionProperty := self property subproperties at: 'position'.
	oldSize := positionProperty targetValues size.
	
	positionProperty 
		currentValue: 42 @ 42;
		frame: 500;
		addKeyframe.
		
	self assert: oldSize + 1 = positionProperty targetValues size.