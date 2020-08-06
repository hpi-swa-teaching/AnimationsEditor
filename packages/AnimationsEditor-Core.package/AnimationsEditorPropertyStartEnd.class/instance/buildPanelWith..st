buildComponents
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
			children: { self buildStartInputWith: aBuilder.
						    self buildEndInputWith: aBuilder.};
			yourself.	
			
	^ aBuilder build: aPluggablePanelSpec.