buildComponents
buildTextBoxProjectName: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: existingProjectsList;
		frame:
			( LayoutFrame new 
				topFraction: 0; 
				bottomFraction: 0.49; 
				leftFraction: 0; 
				rightFraction: 1; 
				yourself);
		yourself