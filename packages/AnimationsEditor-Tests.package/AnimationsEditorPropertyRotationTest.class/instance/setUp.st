running
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertyRotation: AnimationsEditorPropertyRotation new.
	self propertyRotation
		targetFrame: 0;
		targetMorph: self morph;
		copyOfTargetMorph: self propertyRotation targetMorph copy.