as yet unclassified
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertyPosition: AnimationsEditorPropertyPosition new.
	self propertyPosition
		targetFrame: 0;
		targetMorph: self morph;
		copyOfTargetMorph: self propertyPosition targetMorph copy.