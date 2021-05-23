animation
createCompositeAnimationFor: aMorph withStartEnd: aStartEndProperty

	| orderedColl lastKey lastTargetValue |
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastTargetValue := self animationPropertyFor: aMorph.
	self targetValues keysAndValuesDo: [:key :value | 
		(key <= aStartEndProperty endTime and: [key >= aStartEndProperty startTime])
		ifTrue: [
			orderedColl add:   
			(self createAnimationFor: aMorph withKey: key withLastKey: lastKey withValue: value withTargetValue: lastTargetValue).
										lastKey := key.
										lastTargetValue := value.
										]
		ifFalse: [
			aStartEndProperty animationsEditor updateInformationText: 'Keyframe time out of bounds'.].
		].
	^ orderedColl.