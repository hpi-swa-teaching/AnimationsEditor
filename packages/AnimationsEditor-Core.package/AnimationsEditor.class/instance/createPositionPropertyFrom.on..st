buildComponents
createPositionPropertyFrom: aMorph on: aProperty
	^ (AnimationsEditorPropertyPosition on: aMorph)
		parentProperty: aProperty;
		animationsEditor: self;
		yourself.