accessing
playAnimations
	| animations |
	animations := self animationsForTarget.
	animations collect: [ :each | 
										    each register.
										    each start]. 
	^ animations.