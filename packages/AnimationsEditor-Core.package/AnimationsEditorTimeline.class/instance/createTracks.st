creation
createTracks
	| positionY |
	
	self deleteTracks.
	positionY := self trackHeight.

	self property ifNotNil: [
		self property subproperties 
			do: [:subproperty | 
				subproperty isActivated ifTrue: [
					self addTrackFor: subproperty withPosition: positionY.
					positionY := positionY + self trackHeight].].].