accessing
createAnimationFor: aMorph withStartEnd: aStartEndProperty
	| orderedColl lastKey lastRotation|
	
	"self targetRotations: (self targetRotations associations sort: #key ascending) asDictionary."
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastRotation := aMorph rotationDegrees.
	self targetRotations keysAndValuesDo: [:key :value |
		(key <= aStartEndProperty endTime and: [key >= aStartEndProperty startTime])
			ifTrue: [orderedColl 
				add:   
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
			]
		ifFalse: [
			aStartEndProperty animationsEditor updateInformationText: 'Keyframe time out of bounds'.].
	].
	^ orderedColl.