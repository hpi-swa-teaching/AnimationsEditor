creation
createMovingLine
|numberOfProperties|
numberOfProperties := 0.

	self property subproperties
		do: [:subproperty | 
			numberOfProperties := numberOfProperties + 1].
		
	self 
		movingLine: (AnimationsEditorMovingLine on: self withPositionY: self trackHeight withExtent: 3@(numberOfProperties *  self trackHeight));
		addMorphFront: movingLine.
	self movingLine setMovingSpeedPerHundredMilliseconds.
