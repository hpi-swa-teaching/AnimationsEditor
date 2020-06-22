as yet unclassified
testInstanceCreation
	| createProjectPopupInstance |
	createProjectPopupInstance := AnimationsEditorCreateNewProject open.
	self assert:
		(createProjectPopupInstance = nil) not.
	
	createProjectPopupInstance windowReference closeBoxHit.
	