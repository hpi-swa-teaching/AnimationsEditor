as yet unclassified
openNewProject: aName
	self animationsEditorInstance: self new.
	self animationsEditorInstance animationsName: aName.
	ToolBuilder open: self animationsEditorInstance.
	