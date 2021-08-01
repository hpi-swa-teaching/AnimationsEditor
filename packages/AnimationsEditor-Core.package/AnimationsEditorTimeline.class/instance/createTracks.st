creation
createTracks
	| positionY |
	
	self deleteTracks.
	positionY := self trackHeight.
	self property subproperties
		do: [:subproperty | 
			self addTrackFor: subproperty withPosition: positionY.
			positionY := positionY + self trackHeight].