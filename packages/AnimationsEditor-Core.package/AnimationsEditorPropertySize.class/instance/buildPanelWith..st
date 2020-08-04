initialize-release
buildPanelWith: aBuilder
	| aPluggablePanelSpec |
	aPluggablePanelSpec := aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.1;
						bottomFraction: 0.5;
						leftFraction: 0.1;
						rightFraction: 0.5;
						yourself);
			children: { self buildInputWidthWith: aBuilder.
						    self buildInputHeightWith: aBuilder.};
			yourself.	
			
	^ aBuilder build: aPluggablePanelSpec.