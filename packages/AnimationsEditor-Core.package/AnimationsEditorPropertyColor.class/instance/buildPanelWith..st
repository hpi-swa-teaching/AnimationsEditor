buildComponents
buildPanelWith: aBuilder
	| aPluggablePanelSpec |
	aPluggablePanelSpec := aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.1;
						bottomFraction: 0.9;
						leftFraction: 0.1;
						rightFraction: 1;
						yourself);
			children: { self buildInputColorWith: aBuilder.
						self buildInputFrameWith: aBuilder.
						self buildColorPickerWith: aBuilder };
			yourself.	
			
	^ aBuilder build: aPluggablePanelSpec.