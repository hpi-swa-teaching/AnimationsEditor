buildComponents
createPropertyWith: aMorph 
	^ AnimationsEditorProperty new animationsEditor: self;
		 targetMorph: aMorph;
		 title: '' , (self propertyList size + 1), ' - ' , aMorph className;
		 yourself.