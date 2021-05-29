buildComponents
buildColorPickerWith: aBuilder

	
	^aBuilder pluggableScrollPaneSpec new
				model: self;
				morph: ColorPickerMorph new;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.