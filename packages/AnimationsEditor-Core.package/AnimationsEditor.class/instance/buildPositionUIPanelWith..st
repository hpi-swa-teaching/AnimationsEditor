buildComponents
buildPositionUIPanelWith: aBuilder 
	^ aBuilder pluggablePanelSpec new model: self;
		 frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 0.6;
			 leftFraction: 0.55;
			 rightFraction: 1;
			 yourself);
		 yourself.