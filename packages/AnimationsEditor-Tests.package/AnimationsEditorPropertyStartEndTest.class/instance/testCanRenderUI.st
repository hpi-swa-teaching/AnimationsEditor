as yet unclassified
testCanRenderUI
	| p |
	p := AnimationsEditorPropertyStartEnd new.
	
	self assert: (p canRenderUI = true).