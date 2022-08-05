buildComponents
buildTimeline: aBuilder 
	self timeline: (AnimationsEditorTimeline newWith: self).
	^ aBuilder pluggableScrollPaneSpec new 
		model: self;
		morph: self timeline;
		frame: (LayoutFrame new topFraction: 0.67;
			 bottomFraction: 0.93;
			 rightFraction: 1;
			 leftFraction: 0;
			 yourself);
		yourself.