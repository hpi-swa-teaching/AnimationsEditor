accessing
createAnimationFor: aMorph withDuration: aNumber
	| orderedColl lastKey lastExtent|
	
	self targetSizes: (self targetSizes associations sort: #key ascending) asDictionary.
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastExtent := aMorph extent.
	self targetDuration: aNumber.
	self targetSizes keysAndValuesDo: [:key :value | orderedColl add:   
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
									].
	^ orderedColl.