buildComponents
buildInputWidthWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #targetWidth;
				editText: #targetWidth:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.4;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.