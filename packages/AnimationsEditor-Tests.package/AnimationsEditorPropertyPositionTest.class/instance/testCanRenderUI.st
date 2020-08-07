as yet unclassified
testCanRenderUI
	| p |
	p := AnimationsEditorPropertyPosition new.

	self assert: (p canRenderUI = true).