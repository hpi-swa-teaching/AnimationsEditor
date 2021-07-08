buildComponents
buildPanelWith: aBuilder
	| aPluggablePanelSpec |
	
	aPluggablePanelSpec := aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.1;
						bottomFraction: 0.8;
						leftFraction: 0.1;
						rightFraction: 1;
						yourself);
			children: { self buildInputTextWith: aBuilder.
						self buildInputFrameWith: aBuilder. };
			yourself.	
			
	^ aBuilder build: aPluggablePanelSpec.