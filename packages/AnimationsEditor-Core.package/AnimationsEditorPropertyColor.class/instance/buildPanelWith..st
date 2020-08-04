initialize-release
buildPanelWith: aBuilder
	| aPluggablePanelSpec |
	aPluggablePanelSpec := aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.1;
						bottomFraction: 0.8;
						leftFraction: 0.1;
						rightFraction: 0.8;
						yourself);
			children: { self buildInputColorWith: aBuilder. };
			yourself.	
			
	^ aBuilder build: aPluggablePanelSpec.