as yet unclassified
testTitle
	| CreateProjectPopupInstance |
	CreateProjectPopupInstance := AnimationsEditorCreateNewProject open.
	self assert: (CreateProjectPopupInstance windowReference label = 'Create new project').

	CreateProjectPopupInstance windowReference closeBoxHit.
