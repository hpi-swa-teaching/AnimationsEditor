running
setUp
	super setUp.
	self morph: Morph new openInWorld.
	self propertyColor: (AnimationsEditorPropertyColor on: self morph). 
	self propertyColor copyOfTargetMorph: self propertyColor targetMorph copy.
