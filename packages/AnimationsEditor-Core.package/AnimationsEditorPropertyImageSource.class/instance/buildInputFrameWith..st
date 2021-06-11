defaults
buildInputFrameWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #frame;
				editText: #frame:;
			 	frame: (LayoutFrame new
								topFraction: 0.3;
								bottomFraction: 0.6;
								leftFraction: 0.5;
								rightFraction: 0.9;
								yourself);
				 yourself.