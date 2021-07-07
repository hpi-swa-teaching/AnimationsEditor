buildComponents
createTextPropertyFrom: aMorph
	| textTarget |
	textTarget := AnimationsEditorPropertyText on: aMorph.
	textTarget animationsEditor: self.
	^ textTarget.