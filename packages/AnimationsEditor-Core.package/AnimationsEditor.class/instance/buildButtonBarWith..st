buildComponents
buildButtonBarWith: aBuilder
^ aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.6;
						bottomFraction: 0.67;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
			children: {self buildAddMorphButtonWith: aBuilder.
							self buildSaveButtonWith: aBuilder.
						  	self buildPlayButtonWith: aBuilder.
							self buildResetButtonWith: aBuilder.
							self buildLoadJSONButtonWith: aBuilder.};
			yourself.	 		