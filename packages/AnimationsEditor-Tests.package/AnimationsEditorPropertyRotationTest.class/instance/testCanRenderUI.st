as yet unclassified
testCanRenderUI
	| p |
	p := AnimationsEditorPropertyRotation new.

	self assert: (p canRenderUI = true).