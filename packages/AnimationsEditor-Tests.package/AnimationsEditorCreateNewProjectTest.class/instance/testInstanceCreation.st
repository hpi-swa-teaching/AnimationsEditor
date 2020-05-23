as yet unclassified
testInstanceCreation
	| CreateProjectPopupInstance |
	CreateProjectPopupInstance := AnimationsEditorCreateNewProject open.
	self assert:
		(CreateProjectPopupInstance = nil) not.
	
	CreateProjectPopupInstance windowReference closeBoxHit.
	