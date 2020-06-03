initialize-release
initializePropertyEditorPanel
	mainWindow submorphs do:[:each | 
		each class == PluggablePanelMorph
			ifTrue: [
				each submorphs size == 0
					ifTrue: [self propertyEditorPanel: each.]
					].
		].
	
	self propertyEditorPanel getChildrenSelector: #propertyEditorPanelChildren.