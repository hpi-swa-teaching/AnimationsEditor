running
setUp
	super setUp.
	self textMorph: TextMorph new openInWorld.
	self propertyText: (AnimationsEditorPropertyText on: self textMorph).
	self propertyText copyOfTargetMorph: self propertyText targetMorph copy.