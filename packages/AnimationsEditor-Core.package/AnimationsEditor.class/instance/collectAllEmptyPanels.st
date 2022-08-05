buildComponents
collectAllEmptyPanels
	self mainWindow submorphs do: [ :each | 
			each class == PluggablePanelMorph
				ifTrue: [each submorphs size == 0
					ifTrue: [self emptyPanels add: each]]].