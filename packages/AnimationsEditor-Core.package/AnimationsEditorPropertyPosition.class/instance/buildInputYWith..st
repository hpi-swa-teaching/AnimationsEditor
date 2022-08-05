buildComponents
buildInputYWith: aBuilder
	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #positionY;
				editText: #positionY:;
			 	frame: (LayoutFrame new
								topFraction: 0.3;
								bottomFraction: 0.5;
								leftFraction: 0;
								rightFraction: 0.5;
								yourself);
				yourself.