buildComponents
createSizePropertyFrom: aMorph
	| sizeTarget |
	sizeTarget := (AnimationsEditorPropertySize new).
	sizeTarget targetMorph: aMorph.
	sizeTarget targetWidth.
	sizeTarget targetWidth: (aMorph extent) x.
	sizeTarget targetHeight: (aMorph extent) y.
	
	^ sizeTarget.