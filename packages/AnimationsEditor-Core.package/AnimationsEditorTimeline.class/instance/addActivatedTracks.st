creation
addActivatedTracks
	| positionY |
	positionY := self trackHeight.

	self property subproperties do: [ :subproperty | 
		subproperty isActivated ifTrue: 
			[self addTrackFor: subproperty withPosition: positionY.
			positionY := positionY + self trackHeight]].