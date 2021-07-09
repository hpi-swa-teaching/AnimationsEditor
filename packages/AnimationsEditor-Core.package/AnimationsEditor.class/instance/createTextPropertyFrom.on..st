buildComponents
createTextPropertyFrom: aMorph on: aProperty
	^ (AnimationsEditorPropertyText on: aMorph)
		parentProperty: aProperty;
		animationsEditor: self;
		yourself.