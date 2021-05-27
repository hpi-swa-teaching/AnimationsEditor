as yet unclassified
setUp
	| morph |
	
	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	self animationsEditorInstance addTargetMorph: morph.