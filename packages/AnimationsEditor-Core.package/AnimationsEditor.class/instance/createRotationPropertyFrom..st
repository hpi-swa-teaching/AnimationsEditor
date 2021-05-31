buildComponents
createRotationPropertyFrom: aMorph
	| rotationTarget |
	rotationTarget := (AnimationsEditorPropertyRotation new).
	rotationTarget animationsEditor: self.
	rotationTarget targetMorph: aMorph.
	rotationTarget targetRotation: aMorph rotationDegrees.
	^ rotationTarget.