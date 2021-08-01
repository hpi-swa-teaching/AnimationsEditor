buildComponents
buildTextFrameWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Frame (in ms)';
		 enabled: false;
		 frame: (LayoutFrame new topFraction: 0.8;
			 bottomFraction: 0.9;
			 leftFraction: 0.5;
			 rightFraction: 1;
			 yourself);
		 yourself.