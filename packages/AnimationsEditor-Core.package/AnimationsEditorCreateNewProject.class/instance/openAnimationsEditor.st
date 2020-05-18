as yet unclassified
openAnimationsEditor
	|tempName|
	tempName := (dependents at: 2) text asString.
	AnimationsEditor openNewProject: 'Animations Editor - ', tempName.
	(dependents at: 1) closeBoxHit.