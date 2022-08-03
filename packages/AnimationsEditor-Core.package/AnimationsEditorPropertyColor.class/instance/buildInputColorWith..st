buildComponents
buildInputColorWith: aBuilder 
	^ aBuilder pluggableTextSpec new 
		model: self;
		getText: #currentValueAsHexRGBString;
		editText: #currentValueFromText:;
		frame: (LayoutFrame new topFraction: 0.4;
			 bottomFraction: 0.5;
			 leftFraction: 0;
			 rightFraction: 0.5;
			 yourself);
		yourself.