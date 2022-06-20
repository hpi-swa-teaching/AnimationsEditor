buildComponents
buildWith: aBuilder 
	self toolBuilder: aBuilder;
		 buildMainWindowWith: aBuilder;
		 collectAllEmptyPanels;
		 collectPropertyTreeMorph;
		 collectInformationBar;
		 initializePropertyEditorPanel.
		Transcript show: 'zaebalo'.
	^ self mainWindow.