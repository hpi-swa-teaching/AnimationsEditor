initialize-release
buildInputHeightWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #targetHeight;
				editText: #targetHeight:;
			 	frame: (LayoutFrame new
								topFraction: 0.5;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.