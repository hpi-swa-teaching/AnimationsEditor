buildComponents
buildPanelWith: aBuilder
	| aPluggablePanelSpec |
	aPluggablePanelSpec := aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.1;
						bottomFraction: 0.5;
						leftFraction: 0.1;
						rightFraction: 1;
						yourself);
			children: { self buildInputWidthWith: aBuilder.
						    self buildInputHeightWith: aBuilder.
							self buildInputFrameWith: aBuilder.};
			yourself.	
			
	^ aBuilder build: aPluggablePanelSpec.