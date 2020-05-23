as yet unclassified
testTitle
	| ProjectBrowserInstance |
	ProjectBrowserInstance := AnimationsEditorProjectBrowser open.
	self assert: (ProjectBrowserInstance windowReference label = 'Project Browser').

	ProjectBrowserInstance windowReference closeBoxHit.
