accessing
createAnimationFor: aMorph withStartEnd: aStartEndProperty
	| orderedColl lastKey lastExtent|
	
	"self targetSizes: (self targetSizes associations sort: #key ascending) asDictionary."
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastExtent := aMorph extent.
	self targetSizes keysAndValuesDo: [:key :value |
		(key <= aStartEndProperty endTime and: [key >= aStartEndProperty startTime])
			ifTrue: [
				orderedColl add:   
				(AnimPropertyAnimation new
											   duration: key - lastKey;
											   property: #extent;
											   startValue: lastExtent;
											   endValue: value;
											   target: aMorph;
											   state: #paused;
											   yourself).
											lastKey := key.
											lastExtent := value.
			]
		ifFalse: [
			aStartEndProperty animationsEditor updateInformationText: 'Keyframe time out of bounds'.].
	].
	^ orderedColl.