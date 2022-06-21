creation
createTracks
	| positionY |
	
	self deleteTracks.
	positionY := self trackHeight.
	"self property ifNotNil: [
		self property subproperties"
	self animationsEditor selectedPropertiesList ifNotNil:[
		self animationsEditor selectedPropertiesList
		do: [:subproperty | 
			self addTrackFor: subproperty withPosition: positionY.
			positionY := positionY + self trackHeight].
		].
	Transcript show: self animationsEditor selectedPropertiesList.