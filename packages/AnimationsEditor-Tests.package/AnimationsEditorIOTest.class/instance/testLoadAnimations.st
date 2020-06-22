as yet unclassified
testLoadAnimations
	| animation animationsEditorIO animationName |
	animationName := 'animation'.
	animation := AnimPropertyAnimation new.
	animationsEditorIO := AnimationsEditorIO new.
	animationsEditorIO saveAnimationsObject: animation withName:  animationName.
	self assert: ((animationsEditorIO loadAnimationsObjectWithName:  animationName) class  = animation class).