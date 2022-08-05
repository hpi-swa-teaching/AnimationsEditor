buildComponents
buildActivateFrameWith: aBuilder 
	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Activate property';
		enabled: true;
		action: #activateProperty;
		frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 0.1;
			 leftFraction: 0;
			 rightFraction: 1;
			 yourself);
		yourself.