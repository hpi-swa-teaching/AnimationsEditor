animation
createAnimationSequenceFor: aMorph withStartEnd: aStartEndProperty

	| animations lastKey lastTargetValue |
	
	animations := OrderedCollection new.
	lastKey := 0.
	lastTargetValue := self animationPropertyFor: aMorph.
	self targetValues keysAndValuesDo: [:key :value | 
		(self isKey: key outOfBound: aStartEndProperty)
			ifTrue: [
				animations add:   
					(self createAnimationWith: key withPreviousKey: lastKey).
				lastKey := key.
				lastTargetValue := value]
			ifFalse: [
				aStartEndProperty animationsEditor updateInformationText: self messageKeyframeOutOfBounds].
	].

	^ animations.