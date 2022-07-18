creation
createMovingLine
	|numberOfProperties|
	numberOfProperties := 0.
	
	self property subproperties
		do: [:subproperty | 
			subproperty isActivated ifTrue: [
			numberOfProperties := numberOfProperties + 1].].
	self movingLine ifNotNil: [self movingLine abandon].
	self 
		movingLine: (AnimationsEditorMovingLine on: self withExtent: self lineWidth @ (numberOfProperties *  self trackHeight));
		addMorphFront: movingLine.
		