buttonActions
openAnimationsEditor
	| tempName window |
	
	self flag: 'Zugriff auf GUI-Element unsicher implementiert (direkter Indexzugriff)'.
	tempName := (dependents at: 2) text asString.
	window := AnimationsEditor openNewProject: 'Animations Editor - ' , tempName.
	(dependents at: 1) abandon.
	
	^ window.
	