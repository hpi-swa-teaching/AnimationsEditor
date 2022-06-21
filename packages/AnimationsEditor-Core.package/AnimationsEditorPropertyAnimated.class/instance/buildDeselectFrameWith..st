buildComponents
buildDeselectFrameWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Deactivate property';
		 enabled: true;
		 action: #deactivateProperty;
		 frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 0.1;
			 leftFraction: 0;
			 rightFraction: 1;
			 yourself);
		 yourself.