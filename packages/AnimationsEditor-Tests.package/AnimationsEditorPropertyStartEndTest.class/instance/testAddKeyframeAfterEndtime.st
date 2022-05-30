testing
testAddKeyframeAfterEndtime
	| positionProperty oldEndtime propertyStartEnd newEndtime|
	
	positionProperty := self property subproperties at: 'position'.
	propertyStartEnd := self animationsEditorInstance propertyStartEnd.
	oldEndtime := propertyStartEnd endTime. 
		positionProperty 
		positionX: 555;
		positionY: 555;
		frame: oldEndtime + 1;
		addKeyframe.
	newEndtime := propertyStartEnd endTime.
	self assert: oldEndtime + 1 =newEndtime.
	

		