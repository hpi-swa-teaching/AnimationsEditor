creation
addTrackFor: aProperty withPosition: aNumber 
	| track |
	
	track := AnimationsEditorTrack
				on: self
				withProperty: aProperty
				withPosition: 0 @ aNumber
				withExtent: self width @ self trackHeight.
	aProperty addDependent: track.
	self addMorph: track.