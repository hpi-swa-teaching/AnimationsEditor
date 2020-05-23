as yet unclassified
testInstanceCreation
	| ProjectBrowserInstance |
	ProjectBrowserInstance := AnimationsEditorCreateNewProject open.
	self assert:
		(ProjectBrowserInstance = nil) not.
	
	ProjectBrowserInstance windowReference closeBoxHit.
	