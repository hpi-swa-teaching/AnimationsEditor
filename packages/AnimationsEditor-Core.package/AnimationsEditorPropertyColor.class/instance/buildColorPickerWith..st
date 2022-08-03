buildComponents
buildColorPickerWith: aBuilder 
	^ aBuilder pluggableScrollPaneSpec new 
			model: self;
			morph: self colorPicker;
			frame: (LayoutFrame new topFraction: 0.1;
				bottomFraction: 0.4;
			 	leftFraction: 0;
			 	rightFraction: 1;
			 	yourself);
			yourself.