as yet unclassified
testTitle
	| CreateProjectPopupInstance |
	CreateProjectPopupInstance := AnimationsEditorCreateNewProject open.
	self assert: (CreateProjectPopupInstance windowReference label = 'Project Browser').

	CreateProjectPopupInstance windowReference closeBoxHit.
