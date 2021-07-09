buildComponents
createRotationPropertyFrom: aMorph on: aProperty
	^ (AnimationsEditorPropertyRotation on: aMorph)
		parentProperty: aProperty;
		animationsEditor: self;
		yourself.