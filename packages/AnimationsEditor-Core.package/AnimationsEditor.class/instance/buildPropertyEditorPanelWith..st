initialize-release
buildPropertyEditorPanelWith: aBuilder

	propertyEditorPanel := aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 0.5;
						rightFraction: 0.5;
						leftFraction: 0;
						yourself);
			children: {self buildDummy2ButtonWith: aBuilder.};
			yourself.	 	
				
	^ propertyEditorPanel.