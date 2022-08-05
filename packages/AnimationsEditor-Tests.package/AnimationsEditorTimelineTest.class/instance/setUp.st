testing
setUp
	| morph |
    
	super setUp.
	self referenceTime: WorldState lastCycleTime.
	AnimAnimationRegistry value updateAnimations: self referenceTime.
	self animationsEditorInstance: AnimationsEditor open.
	morph := Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: morph.
	self timeline: self animationsEditorInstance timeline.
	self propertyPosition isActivated: true.
	self animationsEditorInstance selectedTreeNode: self propertyPosition.
	self positionTrack: (self timeline submorphs at: 2).
	self timebar: self animationsEditorInstance timeline timebar.