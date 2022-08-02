buildComponents
createPropertyWith: aMorph 
	^ AnimationsEditorProperty new animationsEditor: self;
		 targetMorph: aMorph;
		 title: '' , (self incrementMorphNumber), ' - ' , aMorph className;
		 yourself.