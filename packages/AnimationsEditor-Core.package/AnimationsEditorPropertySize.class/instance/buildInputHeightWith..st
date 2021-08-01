buildComponents
buildInputHeightWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 getText: #targetHeight;
		 editText: #targetHeight:;
		 frame: (LayoutFrame new topFraction: 0.3;
			 bottomFraction: 0.5;
			 leftFraction: 0;
			 rightFraction: 0.5;
			 yourself);
		 yourself.