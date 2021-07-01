creation
createTracks 
	| positionY |
	
	positionY := self trackHeight.
	self property subproperties do: [:subproperty | 
		self addTrackFor: subproperty withPosition: positionY. 
		positionY := positionY + self trackHeight].