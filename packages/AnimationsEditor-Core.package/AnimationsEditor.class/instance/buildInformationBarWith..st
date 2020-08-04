buildComponents
buildInformationBarWith: aBuilder
	self informationBar: (aBuilder pluggableTextSpec new
			model: self;
			getText: #informationBarText;
			setText: #informationBarText:; 
			readOnly: true;
		 	frame: (LayoutFrame new
							topFraction: 0.93;
							bottomFraction: 1;
							rightFraction: 1;
							leftFraction: 0;
							yourself);
			 yourself).
	
	^ self informationBar.