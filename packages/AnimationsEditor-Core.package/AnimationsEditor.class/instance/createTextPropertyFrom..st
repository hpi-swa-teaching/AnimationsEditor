buildComponents
createTextPropertyFrom: aMorph
	| textTarget |
	textTarget := AnimationsEditorPropertyText new.
	textTarget animationsEditor: self.
	textTarget targetMorph: aMorph.
	^ textTarget.