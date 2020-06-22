buildComponents
buildButtonBarWith: aBuilder
	^ aBuilder pluggablePanelSpec new
				model: self;
				frame: (LayoutFrame new
							topFraction: 0.6;
							bottomFraction: 0.65;
							rightFraction: 1;
							leftFraction: 0;
							yourself);
				children: {self buildDummyButtonWith: aBuilder.
							  self buildPlayButtonWith: aBuilder};
				yourself.	 		