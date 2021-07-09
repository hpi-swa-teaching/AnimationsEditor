buildComponents
createSizePropertyFrom: aMorph on: aProperty
	^ (AnimationsEditorPropertySize on: aMorph)
		parentProperty: aProperty;
		animationsEditor: self;
		yourself.