buttonActions
openAnimationsEditor
	| tempName |
	tempName := (dependents at: 2) text asString.
	AnimationsEditor openNewProject: 'Animations Editor - ' , tempName.
	(dependents at: 1) abandon.
	self flag: 'Zugriff auf GUI element property schlecht implementiert (Zeile darüber und 3 darüber)'