as yet unclassified
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertySize: AnimationsEditorPropertySize new.
	self propertySize
		targetFrame: 0;
		targetMorph: self morph;
		copyOfTargetMorph: self propertySize targetMorph copy.