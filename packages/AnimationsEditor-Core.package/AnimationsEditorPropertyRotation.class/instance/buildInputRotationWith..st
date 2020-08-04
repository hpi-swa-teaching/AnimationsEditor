initialize-release
buildInputRotationWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #rotationAsString;
				editText: #rotation:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.4;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.