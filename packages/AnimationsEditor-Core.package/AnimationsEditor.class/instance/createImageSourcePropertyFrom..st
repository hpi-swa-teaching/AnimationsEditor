buildComponents
createImageSourcePropertyFrom: aMorph
	| imageSourceTarget |
	imageSourceTarget := AnimationsEditorPropertyImageSource on: aMorph.
	imageSourceTarget animationsEditor: self.
	^ imageSourceTarget.