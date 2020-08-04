as yet unclassified
testLoadAnimations
	| animation animationsEditorIO animationName |
	animationName := 'animation'.
	anim := AnimPropertyAnimation new.
	aio := AnimationsEditorIO new.
	aio saveAnimationsObject: anim withName:  animationName.
	self assert:
		((aio loadAnimationsObjectWithName:  animationName) class  = anim class).
