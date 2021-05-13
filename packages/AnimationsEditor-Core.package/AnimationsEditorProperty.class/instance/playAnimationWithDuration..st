animation
playAnimationWithDuration: aNumber
	| animations comp |
	self copyOfTargetMorph: self targetMorph copy.
	animations := (self createAnimationFor: self targetMorph withDuration: aNumber).
	
	comp := AnimCompositeAnimation new.
	animations do: [:each | comp add: each].
	comp start. 

												