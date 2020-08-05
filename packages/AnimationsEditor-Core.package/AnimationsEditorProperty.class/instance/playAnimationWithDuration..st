accessing
playAnimationWithDuration: aNumber
	| animation |
	self copyOfTargetMorph: self targetMorph copy.
	animation := (self createAnimationFor: self targetMorph withDuration: aNumber).
	animation == false
		ifFalse: [animation register;
									   start].
												