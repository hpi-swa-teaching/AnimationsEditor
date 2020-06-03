as yet unclassified
testSaveAnimations
	| anim aio |
	anim := AnimationsEditorAnimation new.
	aio := AnimationsEditorIO new.
	aio saveAnimationsObject: anim withName: 'animation'.
	self assert:
		(aio animationStore size = 1).