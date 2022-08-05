buildComponents
buildStartInputWith: aBuilder 
	^ aBuilder pluggableTextSpec new 
			model: self;
		 	getText: #startTimeAsString;
		 	editText: #startTime:;
		 	frame: (LayoutFrame new topFraction: 0.1;
			 	bottomFraction: 0.3;
			 	leftFraction: 0;
			 	rightFraction: 0.5;
			 	yourself);
		 	yourself.