animation
executeCompositeAnimation: aStartEndProperty
	| comp animations |
	
	animations := self createAnimationSequenceFor: self targetMorph withStartEnd: aStartEndProperty.
	comp := AnimCompositeAnimation new.
	animations
		do: [:each | comp add: each].
	comp start.