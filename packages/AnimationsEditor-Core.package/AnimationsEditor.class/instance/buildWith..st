initialize-release
buildWith: aBuilder
	self toolBuilder: aBuilder.
	self buildMainWindowWith: aBuilder.
	self initializePropertyEditorPanel.
	
	^ mainWindow.
