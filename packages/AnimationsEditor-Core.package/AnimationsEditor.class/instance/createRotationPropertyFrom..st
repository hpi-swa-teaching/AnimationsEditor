buildComponents
createRotationPropertyFrom: aMorph
	| rotationTarget |
	rotationTarget := (AnimationsEditorPropertyRotation new).
	rotationTarget targetMorph: aMorph.
	rotationTarget targetRotation: aMorph rotationDegrees.
	^ rotationTarget.