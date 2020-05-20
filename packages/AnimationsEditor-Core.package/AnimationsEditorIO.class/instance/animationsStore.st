accessing
animationsStore
	animationsStore 
	ifNil: [ animationsStore := Dictionary new].
	^ animationsStore.