buildComponents
buildEndInputWith: aBuilder 
	^ aBuilder pluggableTextSpec new 
			model: self;
		 	getText: #endTimeAsString;
		 	editText: #endTime:;
		 	frame: (LayoutFrame new topFraction: 0.3;
			 	bottomFraction: 0.5;
			 	leftFraction: 0;
			 	rightFraction: 0.5;
			 	yourself);
		 	yourself.