buildComponents
createColorPropertyFrom: aMorph
	| colorTarget |
	colorTarget := (AnimationsEditorPropertyColor new).
	colorTarget targetMorph: aMorph.
	colorTarget targetColor: aMorph color.
	^ colorTarget.