buildComponents
buildTextImageSourceWith: aBuilder
	^ aBuilder pluggableButtonSpec new
				model: self;
				label: 'Path to image file';
				enabled: false;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.4;
								leftFraction: 0.5;
								rightFraction: 1;
								yourself);
				 yourself.