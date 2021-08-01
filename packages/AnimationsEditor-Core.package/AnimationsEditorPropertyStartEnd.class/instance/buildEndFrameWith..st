buildComponents
buildEndFrameWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'End Frame (in ms)';
		 enabled: false;
		 frame: (LayoutFrame new topFraction: 0.3;
			 bottomFraction: 0.5;
			 leftFraction: 0.5;
			 rightFraction: 1;
			 yourself);
		 yourself.