as yet unclassified
openNewProject: aName
	|animationsEditor|
	animationsEditor := self new.
	animationsEditor animationsName: aName.

	ToolBuilder open: animationsEditor.
	