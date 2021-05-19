saveJson
setUp
	| morph |
	
	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	
	