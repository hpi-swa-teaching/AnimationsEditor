testing
setUp
	| morph referenceTime |
    
	super setUp.
	referenceTime := WorldState lastCycleTime.
	self animationsEditorInstance: AnimationsEditor open.
	morph := Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: morph.
	self timeline: self animationsEditorInstance timeline.
	self animationsEditorInstance selectedTreeNode: self propertyPosition.
	self positionTrack: (self timeline submorphs at: 5).
	