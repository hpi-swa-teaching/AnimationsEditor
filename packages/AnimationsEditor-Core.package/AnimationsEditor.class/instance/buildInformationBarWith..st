initialize-release
buildInformationBarWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			getText: #informationBarText; 
			readOnly: true;
			 frame: (LayoutFrame new
							topFraction: 0.95;
							bottomFraction: 1;
							rightFraction: 1;
							leftFraction: 0;
							yourself);
			 yourself.