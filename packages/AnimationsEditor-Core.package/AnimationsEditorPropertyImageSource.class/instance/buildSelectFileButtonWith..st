buildComponents
buildSelectFileButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new 
		 model: self;
		 label: 'Select file';
		 action: #openFileSelection;
		 frame: (LayoutFrame new topFraction: 0;
			 topFraction: 0.8;
			 bottomFraction: 1;
			 rightFraction: 1;
			 leftFraction: 0;
			 yourself);
		 yourself.