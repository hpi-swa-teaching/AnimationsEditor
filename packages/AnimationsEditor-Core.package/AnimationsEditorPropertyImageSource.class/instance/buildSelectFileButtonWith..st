buildComponents
buildSelectFileButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Select file';
		 action: #openFileSelection;
		 frame: (LayoutFrame new topFraction: 0.4;
			 bottomFraction: 0.5;
			 leftFraction: 0;
			 rightFraction: 1;
			 yourself);
		 yourself.