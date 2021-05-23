animation
playAnimationWithStartEnd: aStartEndProperty
	| animations comp |
	self copyOfTargetMorph: self targetMorph copy.
	animations := (self createCompositeAnimationFor: self targetMorph withStartEnd: aStartEndProperty).
	
	comp := AnimCompositeAnimation new.
	animations do: [:each | comp add: each.].
	comp start. 

												