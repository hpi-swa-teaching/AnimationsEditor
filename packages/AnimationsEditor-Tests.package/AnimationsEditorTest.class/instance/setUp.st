saveJson
setUp
	| morph |
	
	self animationsEditorInstance: AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	
	