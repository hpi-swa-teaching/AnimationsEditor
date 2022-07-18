accessing
setUp

	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	self morph: Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: self morph.
	self property: self animationsEditor propertyList first. 
	self propertyPosition isActivated: true.
	self propertyRotation isActivated: true.