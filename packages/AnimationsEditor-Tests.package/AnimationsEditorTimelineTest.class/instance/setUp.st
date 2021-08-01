testing
setUp
	| morph |
    
	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	morph := Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: morph.
	self timeline: self animationsEditorInstance timeline.
	self animationsEditorInstance selectedTreeNode: self propertyPosition.
	self positionTrack: (self timeline submorphs at: 5).