as yet unclassified
testButtonNameOpen
	| window button popup |
	window := AnimationsEditorProjectBrowser open.
	button := AnimationsEditorTestHelper findButtonWithLabel: 'open existing project' On: window windowReference.
	popup := window openExistingProject.
	
	self assert: (button = nil) not.
	self assert: (button actionSelector = #openExistingProject).
	self assert: (popup = nil) not.
	
	popup windowReference abandon.
	window windowReference abandon.		