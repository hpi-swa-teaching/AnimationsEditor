buildComponents
buildInputFrameWith: aBuilder
	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #frame;
				editText: #frame:;
			 	frame: (LayoutFrame new
								topFraction: 0.8;
								bottomFraction: 0.9;
								leftFraction: 0;
								rightFraction: 0.5;
								yourself);
				 yourself.