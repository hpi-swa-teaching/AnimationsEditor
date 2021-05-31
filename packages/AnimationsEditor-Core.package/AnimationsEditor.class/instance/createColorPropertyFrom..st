buildComponents
createColorPropertyFrom: aMorph
	| colorTarget |
	colorTarget := (AnimationsEditorPropertyColor new).
	colorTarget animationsEditor: self.
	colorTarget targetMorph: aMorph.
	colorTarget targetColor: aMorph color.
	^ colorTarget.