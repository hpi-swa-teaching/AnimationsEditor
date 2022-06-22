running
setUp
	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	self propertyStartEnd: self animationsEditorInstance propertyStartEnd.
	self morph: Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: self morph.
	self property: self animationsEditorInstance propertyList first.