buildComponents
buildInputSourceWith: aBuilder 
	^ aBuilder pluggableTextSpec new 
			model: self;
			getText: #currentValue;
			editText: #currentValue:;
			frame: (LayoutFrame new topFraction: 0.1;
				bottomFraction: 0.4;
			 	leftFraction: 0;
			 	rightFraction: 0.5;
			 	yourself);
			yourself.