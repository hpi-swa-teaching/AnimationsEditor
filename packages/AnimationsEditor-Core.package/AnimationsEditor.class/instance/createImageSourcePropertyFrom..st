buildComponents
createImageSourcePropertyFrom: aMorph
	| imageSourceTarget |
	imageSourceTarget := (AnimationsEditorPropertyImageSource new).
	imageSourceTarget targetMorph: aMorph.
	^ imageSourceTarget.