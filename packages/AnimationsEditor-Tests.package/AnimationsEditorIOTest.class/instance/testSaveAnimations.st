as yet unclassified
testSaveAnimations
	| anim aio |
	anim := AnimationsEditorAnimation new.
	aio := AnimationsEditorIO new.
	aio saveAnimationsObject: anim withName: 'animation'.
	self assert:
		(aio animationsStore size = 1).