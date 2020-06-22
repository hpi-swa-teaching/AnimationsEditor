as yet unclassified
testButtonNameCreate
	| window button popup |
	window := AnimationsEditorProjectBrowser open.
	button := AnimationsEditorTestHelper findButtonWithLabel: 'create new project' On: window windowReference.
	popup := window openPopupCreateNewProject.
	
	self assert: (button = nil) not.
	self assert: (button actionSelector = #openPopupCreateNewProject).
	self assert: (popup = nil) not.
	
	popup windowReference abandon.
	window windowReference abandon.		