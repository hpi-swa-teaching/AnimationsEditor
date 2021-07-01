running
setUp
	super setUp.
	self textMorph: TextMorph new openInWorld.
	self propertyText: AnimationsEditorPropertyText new.
	self propertyText
		targetFrame: 0;
		targetMorph: self textMorph;
		copyOfTargetMorph: self propertyText targetMorph copy.