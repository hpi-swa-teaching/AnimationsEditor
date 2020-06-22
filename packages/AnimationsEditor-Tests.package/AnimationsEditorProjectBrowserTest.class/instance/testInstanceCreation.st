as yet unclassified
testInstanceCreation
	| animationsEditorProjectBrowser |
	animationsEditorProjectBrowser := AnimationsEditorProjectBrowser open.
	self assert: (animationsEditorProjectBrowser = nil) not.
	animationsEditorProjectBrowser windowReference closeBoxHit.
	