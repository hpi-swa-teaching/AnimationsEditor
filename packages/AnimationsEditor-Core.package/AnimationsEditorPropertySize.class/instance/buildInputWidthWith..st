buildComponents
buildInputWidthWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 getText: #targetWidth;
		 editText: #targetWidth:;
		 frame: (LayoutFrame new topFraction: 0.1;
			 bottomFraction: 0.3;
			 leftFraction: 0;
			 rightFraction: 0.5;
			 yourself);
		 yourself.