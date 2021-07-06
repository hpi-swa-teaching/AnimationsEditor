buildComponents
createPositionPropertyFrom: aMorph
	| positionTarget |
	positionTarget := AnimationsEditorPropertyPosition new.
	positionTarget animationsEditor: self.
	positionTarget targetMorph: aMorph.
	positionTarget positionX: aMorph position x.
	positionTarget positionY: aMorph position y.
	^ positionTarget.