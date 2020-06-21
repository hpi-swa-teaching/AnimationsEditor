as yet unclassified
open
	| var2 |
	self animationsEditorInstance: (self new).
	var2 := ToolBuilder open: self animationsEditorInstance.
	self animationsEditorInstance irgendwieistegal.
	self flag:'Rename vars'.
	^var2
