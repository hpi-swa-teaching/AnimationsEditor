buildComponents
buildWith: aBuilder
	self toolBuilder: aBuilder.
	self buildMainWindowWith: aBuilder.
	self collectAllEmptyPanels.
	self collectPropertyTreeMorph.
	self initializePropertyEditorPanel.

	^ mainWindow.
