as yet unclassified
testCanRenderUI
	| p |
	p := AnimationsEditorPropertyColor new.

	self assert: (p canRenderUI = true).