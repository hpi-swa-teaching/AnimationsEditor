buildComponents
createColorPropertyFrom: aMorph
	| colorTarget |
	colorTarget := AnimationsEditorPropertyColor on: aMorph.
	colorTarget animationsEditor: self.
	^ colorTarget.