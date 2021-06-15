buildComponents
buildInputColorWith: aBuilder
	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #targetColorAsHexRGBString;
				editText: #targetColorFromString:;
			 	frame: (LayoutFrame new
								topFraction: 0.6;
								bottomFraction: 0.9;
								leftFraction: 0;
								rightFraction: 0.4;
								yourself);
				 yourself.