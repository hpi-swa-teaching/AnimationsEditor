buttonActions
openPopupCreateNewProject
	":)"
	AnimationsEditorCreateNewProject open.
	(dependents at: 1) closeBoxHit.
	self flag: 'Zugriff auf GUI element property schlecht implementiert (Zeile darüber)'