buildComponents
createPositionPropertyFrom: aMorph
	| positionTarget |
	positionTarget := (AnimationsEditorPropertyPosition new).
	positionTarget targetMorph: aMorph.
	positionTarget positionX.
	positionTarget positionX: (aMorph position) x.
	positionTarget positionY: (aMorph position) y.
	^ positionTarget.