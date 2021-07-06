buildComponents
buildInputTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #targetText;
				editText: #targetText:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 0.4;
								yourself);
				 yourself.