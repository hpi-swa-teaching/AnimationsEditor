buildComponents
createSizePropertyFrom: aMorph
	| positionTarget |
	positionTarget := (AnimationsEditorPropertySize new).
	positionTarget targetWidth.
	positionTarget targetWidth: (aMorph extent) x.
	positionTarget targetHeight: (aMorph extent) y.
	^ positionTarget.