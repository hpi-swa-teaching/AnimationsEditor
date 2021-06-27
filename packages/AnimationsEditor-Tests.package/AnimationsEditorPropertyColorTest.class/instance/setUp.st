running
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertyColor: AnimationsEditorPropertyColor new.
	self propertyColor
		targetFrame: 0;
		targetMorph: self morph;
		copyOfTargetMorph: self propertyColor targetMorph copy.
