as yet unclassified
testTitle
	| ProjectBrowserInstance |
	ProjectBrowserInstance := AnimationsEditorCreateNewProject open.
	self assert: (ProjectBrowserInstance windowReference label = 'Create new project').

	ProjectBrowserInstance windowReference closeBoxHit.
