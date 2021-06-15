buildComponents
buildColorPickerWith: aBuilder
	^aBuilder pluggableScrollPaneSpec new
				model: self;
				morph: self colorPicker;
			 	frame: (LayoutFrame new
								topFraction: 0;
								bottomFraction: 0.35;
								leftFraction: 0;
								rightFraction: 0.9;
								yourself);
				 yourself.