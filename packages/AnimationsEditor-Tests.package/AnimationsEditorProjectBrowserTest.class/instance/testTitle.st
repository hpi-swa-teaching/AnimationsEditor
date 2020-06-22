as yet unclassified
testTitle
	| animationsEditorProjectBrowser |
	animationsEditorProjectBrowser := AnimationsEditorProjectBrowser open.
	self assert: (animationsEditorProjectBrowser windowReference label = 'Project Browser').
	animationsEditorProjectBrowser windowReference closeBoxHit.
