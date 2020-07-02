buildComponents
createPositionPropertyFrom: aMorph
	| positionTarget |
	positionTarget := (AnimationsEditorPropertyPosition new).
	positionTarget positionX.
	positionTarget positionX: (aMorph position) x.
	positionTarget positionY: (aMorph position) y.
	^ positionTarget.