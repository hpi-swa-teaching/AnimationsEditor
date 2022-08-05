buildComponents
collectPropertyTreeMorph
	self mainWindow submorphs do: [ :each | 
		each class == PluggableTreeMorph
			ifTrue: [self propertyTreeMorph: each]].