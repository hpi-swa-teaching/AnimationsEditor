initialize-release
buildMainWindowWith: aBuilder
	mainWindow :=  aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: #animationsName;
			extent: 1000@700;
			children: {
							self buildPropertiesBarWith: aBuilder.
							self buildPositionUIPanelWith: aBuilder.
						}
			yourself).	
	
^ mainWindow.
