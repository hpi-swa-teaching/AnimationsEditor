buildComponents
buildInputSourceWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #targetSource;
				editText: #targetSource:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 0.4;
								yourself);
				 yourself.