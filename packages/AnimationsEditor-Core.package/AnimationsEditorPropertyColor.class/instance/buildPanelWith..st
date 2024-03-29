buildComponents
buildPanelWith: aBuilder 
	| aPluggablePanelSpec |
	
	aPluggablePanelSpec := aBuilder pluggablePanelSpec new model: self;
				 frame: (LayoutFrame new topFraction: 0.1;
					 bottomFraction: 0.9;
					 leftFraction: 0.1;
					 rightFraction: 0.8;
					 yourself);
				 children: {self buildColorPickerWith: aBuilder. self buildInputColorWith: aBuilder. self buildTextColorWith: aBuilder. self buildInputFrameWith: aBuilder. self buildTextFrameWith: aBuilder};
				 yourself.
	^ aBuilder build: aPluggablePanelSpec.