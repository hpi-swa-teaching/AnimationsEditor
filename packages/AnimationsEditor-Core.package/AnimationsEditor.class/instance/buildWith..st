initialize-release
buildWith: aBuilder
	toolBuilder := aBuilder.
	self buildMainWindowWith: aBuilder.
	self initializePropertyEditorPanel.
	
^ mainWindow.
