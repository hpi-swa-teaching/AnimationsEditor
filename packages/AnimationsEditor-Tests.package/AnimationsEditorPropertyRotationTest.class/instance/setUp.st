running
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertyRotation: (AnimationsEditorPropertyRotation on: self morph).