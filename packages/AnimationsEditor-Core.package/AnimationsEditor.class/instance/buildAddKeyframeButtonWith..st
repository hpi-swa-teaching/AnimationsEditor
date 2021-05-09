buildComponents
buildAddKeyframeButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Add keyframe';
		 action: #addKeyframe;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 5*(1/self numberButtons);
						leftFraction: 4*(1/self numberButtons);
						yourself);
		 yourself.