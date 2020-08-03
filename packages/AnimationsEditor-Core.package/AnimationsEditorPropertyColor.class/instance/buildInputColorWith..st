initialize-release
buildInputColorWith: aBuilder

	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #colorAsString;
				editText: #color:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.