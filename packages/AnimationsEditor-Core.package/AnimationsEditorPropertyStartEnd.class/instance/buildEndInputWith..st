buildComponents
buildEndInputWith: aBuilder
	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #endTimeAsString;
				editText: #endTime:;
			 	frame: (LayoutFrame new
								topFraction: 0.6;
								bottomFraction: 0.9;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.