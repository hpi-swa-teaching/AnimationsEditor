buildComponents
createColorPropertyFrom: aMorph
	| colorTarget |
	colorTarget := (AnimationsEditorPropertyColor new).
	colorTarget targetMorph: aMorph.
	colorTarget color: aMorph color.
	^ colorTarget.