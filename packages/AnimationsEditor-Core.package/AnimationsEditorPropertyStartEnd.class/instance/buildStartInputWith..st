as yet unclassified
buildStartInputWith: aBuilder
	^ aBuilder pluggableTextSpec new
				model: self;
				getText: #startTimeAsString;
				editText: #startTime:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.4;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.