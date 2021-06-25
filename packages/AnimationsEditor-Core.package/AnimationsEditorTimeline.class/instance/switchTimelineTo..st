accessing
switchTimelineTo: aProperty
	| positionY |
	
	self property: aProperty.
	positionY := 0.
	aProperty subproperties do: [:subproperty | 
		self addTrackFor: subproperty withPosition: positionY. 
		positionY := positionY + self trackHeight].