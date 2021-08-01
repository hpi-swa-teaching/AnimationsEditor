animation
executeCompositeAnimation: aStartEndProperty 
	| comp animations |
	
	animations := self createAnimationSequenceWithStartEnd: aStartEndProperty.
	comp := AnimCompositeAnimation new.
	animations
		do: [:each | comp add: each].
	comp start.