buildComponents
buildMainWindowWith: aBuilder
	self mainWindow: (aBuilder build: (aBuilder pluggableWindowSpec new
														model: self;
														label: #editorTitle;
														extent: 600@450;
														children: { self buildButtonBarWith: aBuilder.
																		  self buildPropertiesTreeWith: aBuilder.
																		  self buildPositionUIPanelWith: aBuilder.
																		  self buildTimeline: aBuilder.
																		  self buildInformationBarWith: aBuilder.
																  	 };
														yourself)).	
	
	^ self mainWindow.
