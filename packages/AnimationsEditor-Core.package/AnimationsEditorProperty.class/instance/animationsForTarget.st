accessing
animationsForTarget
	| animations |
	animations := OrderedCollection new.
	self subproperties collect: [ :each | animations add: (each createAnimationFor: self targetMorph)].
	
	^ animations.