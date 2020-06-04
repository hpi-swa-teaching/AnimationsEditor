buildComponents
buildTextBoxProjectName: aBuilder
	^ aBuilder pluggableTextSpec new
			model: self;
			frame:
				(LayoutFrame new 
					topFraction: 0; 
					bottomFraction: 0.49; 
					leftFraction: 0; 
					rightFraction: 1; 
					yourself);
			yourself.