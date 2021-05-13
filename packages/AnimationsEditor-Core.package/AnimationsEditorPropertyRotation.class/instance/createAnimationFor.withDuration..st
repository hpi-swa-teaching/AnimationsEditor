accessing
createAnimationFor: aMorph withDuration: aNumber
	| orderedColl lastKey lastRotation|
	
	self targetRotations: (self targetRotations associations sort: #key ascending) asDictionary.
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastRotation := aMorph rotationDegrees.
	self targetDuration: aNumber.
	self targetRotations keysAndValuesDo: [:key :value | orderedColl add:   
		(AnimPropertyAnimation new
									   duration: key - lastKey;
									   property: #rotationDegrees;
									   startValue: lastRotation;
									   endValue: value;
									   target: aMorph;
									   state: #paused;
									   yourself).
									lastKey := key.
									lastRotation := value.
									].
	^ orderedColl.