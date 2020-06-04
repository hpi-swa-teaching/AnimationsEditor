buildComponents
buildMainWindowWith: aBuilder
	self mainWindow: (aBuilder build: (aBuilder pluggableWindowSpec new
														model: self;
														label: #animationsName;
														extent: 500@350;
														children: { self buildButtonBarWith: aBuilder.
																		  self buildPropertiesTreeWith: aBuilder.
																		  self buildTimeline: aBuilder.
																		  self buildInformationBarWith: aBuilder.
																   		  self buildPositionUIPanelWith: aBuilder.};
														yourself)).	
	
	^ self mainWindow.
