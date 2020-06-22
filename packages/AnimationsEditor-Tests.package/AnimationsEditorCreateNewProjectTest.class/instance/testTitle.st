as yet unclassified
testTitle
	| createProjectPopupInstance |
	createProjectPopupInstance := AnimationsEditorCreateNewProject open.
	self assert: (createProjectPopupInstance windowReference label = 'Create new project').
	createProjectPopupInstance windowReference closeBoxHit.
