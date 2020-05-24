as yet unclassified
testInstanceCreation
	| ProjectBrowserInstance |
	ProjectBrowserInstance := AnimationsEditorProjectBrowser open.
	self assert:
		(ProjectBrowserInstance = nil) not.
	
	ProjectBrowserInstance windowReference closeBoxHit.
	