running
setUp
	| morph |
	
	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	morph := Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: morph.
	self jsonHandler: self animationsEditorInstance jsonHandler.
