testing
testTargetValuesIsSorted
	| positionProperty |
	
	positionProperty := self property subproperties at: 'position'.
	positionProperty 
		currentValue: 42 @ 42;
		frame: 500;
		addKeyframe.
		
	positionProperty 
		currentValue: 420 @ 420;
		frame: 200;
		addKeyframe.
		
	self assert: positionProperty targetValues isSorted.