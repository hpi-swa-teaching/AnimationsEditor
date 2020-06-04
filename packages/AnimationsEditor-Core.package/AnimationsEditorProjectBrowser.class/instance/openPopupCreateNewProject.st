buttonActions
openPopupCreateNewProject
	":)"
	AnimationsEditorCreateNewProject open.
	(dependents at: 1) abandon.
	self flag: 'Zugriff auf GUI element property schlecht implementiert (Zeile darüber)'.