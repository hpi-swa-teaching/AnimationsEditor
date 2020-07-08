accessing
animationsForTarget
	| animations |
	animations := OrderedCollection new.
	
	subproperties collect: [ :each |
		 animations add: (each createAnimationFor: self targetMorph)].
	
	^ animations.