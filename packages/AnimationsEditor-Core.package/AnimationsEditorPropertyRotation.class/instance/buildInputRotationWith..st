buildComponents
buildInputRotationWith: aBuilder 
	^ aBuilder pluggableTextSpec new 
			model: self;
			getText: #currentValueAsString;
			editText: #currentValue:;
			frame: (LayoutFrame new topFraction: 0.1;
			 	bottomFraction: 0.3;
			 	leftFraction: 0;
			 	rightFraction: 0.5;
			 	yourself);
			yourself.