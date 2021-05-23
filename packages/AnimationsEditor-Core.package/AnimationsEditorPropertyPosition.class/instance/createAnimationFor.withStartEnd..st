accessing
createAnimationFor: aMorph withStartEnd: aStartEndProperty
	| orderedColl lastKey lastPosition|
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastPosition := aMorph position.
	self targetPositions keysAndValuesDo: [:key :value | 
		(key <= aStartEndProperty endTime and: [key >= aStartEndProperty startTime])
		ifTrue: [
			orderedColl add:   
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
										]
		ifFalse: [
			aStartEndProperty animationsEditor updateInformationText: 'Keyframe time out of bounds'.].
		].
	^ orderedColl.