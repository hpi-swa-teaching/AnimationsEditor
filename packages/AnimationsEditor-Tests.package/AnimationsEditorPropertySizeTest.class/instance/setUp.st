running
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertySize: (AnimationsEditorPropertySize on: self morph).