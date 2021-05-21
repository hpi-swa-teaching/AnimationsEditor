animation
playAnimationWithStartEnd: aStartEndProperty
	| animations comp |
	self copyOfTargetMorph: self targetMorph copy.
	animations := (self createAnimationFor: self targetMorph withStartEnd: aStartEndProperty).
	
	comp := AnimCompositeAnimation new.
	animations do: [:each | comp add: each.].
	comp start. 

												