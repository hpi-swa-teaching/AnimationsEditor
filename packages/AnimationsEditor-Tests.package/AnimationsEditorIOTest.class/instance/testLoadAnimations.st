as yet unclassified
testLoadAnimations
	| anim aio animationName |
	animationName := 'animation'.
	anim := AnimPropertyAnimation new.
	aio := AnimationsEditorIO new.
	aio saveAnimationsObject: anim withName:  animationName.
	self assert:
		((aio loadAnimationsObjectWithName:  animationName) class  = anim class).