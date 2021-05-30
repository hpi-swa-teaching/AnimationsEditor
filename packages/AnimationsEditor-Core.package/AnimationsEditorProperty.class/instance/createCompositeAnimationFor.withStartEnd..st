animation
createCompositeAnimationFor: aMorph withStartEnd: aStartEndProperty

	| animations lastKey lastTargetValue |
	
	animations := OrderedCollection new.
	lastKey := 0.
	lastTargetValue := self animationPropertyFor: aMorph.
	self targetValues keysAndValuesDo: [:key :value | 
		(self isKey: key outOfBound: aStartEndProperty)
			ifTrue: [
				animations add:   
					(self createAnimationFor: aMorph withKey: key withLastKey: lastKey withValue: value withLastValue: lastTargetValue).
				lastKey := key.
				lastTargetValue := value]
			ifFalse: [
				aStartEndProperty animationsEditor updateInformationText: self messageKeyframeOutOfBounds].
	].

	^ animations.