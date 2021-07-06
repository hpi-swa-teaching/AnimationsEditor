buildComponents
createImageSourcePropertyFrom: aMorph
	| imageSourceTarget |
	imageSourceTarget := AnimationsEditorPropertyImageSource new.
	imageSourceTarget animationsEditor: self.
	imageSourceTarget targetMorph: aMorph.
	^ imageSourceTarget.