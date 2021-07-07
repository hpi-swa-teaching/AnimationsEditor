buildComponents
createPositionPropertyFrom: aMorph
	| positionTarget |
	positionTarget := AnimationsEditorPropertyPosition on: aMorph.
	positionTarget animationsEditor: self.
	^ positionTarget.