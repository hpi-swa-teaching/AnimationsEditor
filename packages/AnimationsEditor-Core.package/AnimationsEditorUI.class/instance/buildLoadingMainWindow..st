buildComponents
buildLoadingMainWindow: aBuilder
	| loadingMainWindow |
	
	PluggableWindowSpec new openInHand.
	loadingMainWindow:= (aBuilder build: (aBuilder pluggableWindowSpec new
														model: self;
														label: #editorTitle;
														extent: 500@350;
														children: { self buildButtonBarWith: aBuilder.
																		  self buildPropertiesTreeWith: aBuilder.
																		  self buildPositionUIPanelWith: aBuilder.
																		  self buildTimeline: aBuilder.
																		  self buildInformationBarWith: aBuilder.
																  	 };
														yourself)).	
	
	^ loadingMainWindow.


