as yet unclassified
testSaveAnimations
	| animation animationsEditorIO |
	animation := AnimPropertyAnimation new.
	animationsEditorIO := AnimationsEditorIO new.
	animationsEditorIO saveAnimationsObject: animation withName: 'animation'.
	self assert: (animationsEditorIO animationStore size = 1).