buttonActions
openPopupCreateNewProject
	| window |
	self flag: 'Zugriff auf GUI-Element unsicher implementiert (direkter Indexzugriff)'.
	window := AnimationsEditorCreateNewProject open.
	(dependents at: 1) abandon.
	
	^ window.