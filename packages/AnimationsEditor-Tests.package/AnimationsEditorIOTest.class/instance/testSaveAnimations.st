as yet unclassified
testSaveAnimations
	| anim aio |
	anim := AnimPropertyAnimation new.
	aio := AnimationsEditorIO new.
	aio saveAnimationsObject: anim withName: 'animation'.
	self assert:
		(aio animationStore size = 1).