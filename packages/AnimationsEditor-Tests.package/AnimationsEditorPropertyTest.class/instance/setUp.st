running
setUp
	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	self morph: Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: self morph.
	self property: self animationsEditorInstance propertyList second.