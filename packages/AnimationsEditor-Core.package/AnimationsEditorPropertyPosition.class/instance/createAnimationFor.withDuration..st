accessing
createAnimationFor: aMorph withDuration: aNumber
	| orderedColl lastKey lastPosition|
	
	self targetPositions: (self targetPositions associations sort: #key ascending) asDictionary.
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastPosition := aMorph position.
	self targetDuration: aNumber.
	self targetPositions keysAndValuesDo: [:key :value | orderedColl add:   
		(AnimPropertyAnimation new
									   duration: key - lastKey;
									   property: #position;
									   startValue: lastPosition;
									   endValue: value;
									   target: aMorph;
									   state: #paused;
									   yourself).
									lastKey := key.
									lastPosition := value.
									].
	^ orderedColl.