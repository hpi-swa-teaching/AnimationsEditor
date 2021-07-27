running
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertyPosition: (AnimationsEditorPropertyPosition on: self morph). 