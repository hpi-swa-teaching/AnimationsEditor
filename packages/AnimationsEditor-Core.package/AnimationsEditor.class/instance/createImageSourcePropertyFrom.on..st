buildComponents
createImageSourcePropertyFrom: aMorph on: aProperty
	^ (AnimationsEditorPropertyImageSource on: aMorph)
		parentProperty: aProperty;
		animationsEditor: self;
		yourself.