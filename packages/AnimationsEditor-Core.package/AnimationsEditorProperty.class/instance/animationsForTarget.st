accessing
animationsForTarget
	| animations |
	animations := OrderedCollection new.
	subproperties collect: [ :each | animations add: (each propertyToAnimationFor: self targetMorph)].
	
	^ animations.