animation
createAnimationSequenceFor: aMorph withStartEnd: aStartEndProperty

	| animations lastKey |
	
	animations := OrderedCollection new.
	lastKey := 0.

	self targetValues keysDo: [:key | 
		(self isKey: key outOfBound: aStartEndProperty)
			ifTrue: [
				animations add: (self createAnimationWith: key withPreviousKey: lastKey).
				lastKey := key]
			ifFalse: [
				self animationsEditor updateInformationText: self messageKeyframeOutOfBounds].
	].

	^ animations.