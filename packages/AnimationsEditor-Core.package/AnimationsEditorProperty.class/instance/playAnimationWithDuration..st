accessing
playAnimationWithDuration: aNumber
	| animation |
	self copyOfTargetMorph: self targetMorph copy.
	animation := (self createAnimationFor: self targetMorph withDuration: aNumber).
	self canCreateAnimation
		ifTrue: [animation register;
									   start]
		ifFalse: [self copyOfTargetMorph: nil].
												