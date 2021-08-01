buildComponents
collectInformationBar
	self mainWindow submorphs
		do: [:each | each class == PluggableTextMorphPlus
				ifTrue: [self informationBar: each]].