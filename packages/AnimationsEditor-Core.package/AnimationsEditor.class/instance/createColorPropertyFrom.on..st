buildComponents
createColorPropertyFrom: aMorph on: aProperty
	^ (AnimationsEditorPropertyColor on: aMorph)
		parentProperty: aProperty;
		animationsEditor: self;
		yourself.