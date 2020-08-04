buildComponents
collectInformationBar
	mainWindow submorphs do: [:each | 
		each class == PluggableTextMorphPlus
			ifTrue: [self informationBar: each]].