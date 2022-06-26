propertyActivation
deleteAllKeyframes
	self targetValues copy keysDo: [:key| (key = 0) ifFalse: [self targetValues removeKey: key].].
	self changed: #deleteKeyframes.
	