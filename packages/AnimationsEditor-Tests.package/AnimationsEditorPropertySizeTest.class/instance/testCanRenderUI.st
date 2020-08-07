as yet unclassified
testCanRenderUI
	| p |
	p := AnimationsEditorPropertySize new.

	self assert: (p canRenderUI = true).