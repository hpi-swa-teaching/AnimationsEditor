buildComponents
createPropertyWith: aMorph 
	^ AnimationsEditorProperty new animationsEditor: self;
		 targetMorph: aMorph;
		 title: '' , self propertyList size , ' - ' , aMorph className;
		 yourself.