buildComponents
buildInputRotationWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #targetRotationAsString;
				editText: #targetRotation:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.4;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.