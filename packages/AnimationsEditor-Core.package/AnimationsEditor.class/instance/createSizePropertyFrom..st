buildComponents
createSizePropertyFrom: aMorph 
	| sizeTarget |
	sizeTarget := AnimationsEditorPropertySize on: aMorph.
	sizeTarget animationsEditor: self.
	^ sizeTarget.