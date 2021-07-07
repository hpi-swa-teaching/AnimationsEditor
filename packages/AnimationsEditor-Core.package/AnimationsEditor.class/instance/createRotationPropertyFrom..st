buildComponents
createRotationPropertyFrom: aMorph
	| rotationTarget |
	rotationTarget := AnimationsEditorPropertyRotation on: aMorph.
	rotationTarget animationsEditor: self.
	^ rotationTarget.