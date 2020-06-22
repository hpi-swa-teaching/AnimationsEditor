as yet unclassified
testButtonNameOpen
	| windowClass button animationsEditor |
	windowClass := AnimationsEditorCreateNewProject open.
	
	button := (AnimationsEditorTestHelper findButtonWithLabel: 'create project' On: windowClass windowReference).
	animationsEditor := windowClass openAnimationsEditor.
									
	self assert: (button = nil) not.												
	self assert: (button actionSelector = #openAnimationsEditor).
	self assert: (animationsEditor = nil) not.
	
	animationsEditor abandon.
	windowClass windowReference closeBoxHit.