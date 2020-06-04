initialize-release
buildInputYWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #positionY;
				editText: #positionY:;
			 	frame: (LayoutFrame new
								topFraction: 0.5;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.