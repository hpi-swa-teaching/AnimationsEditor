buildComponents
buildAddKeyframeButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Add keyframe';
		 action: #addKeyframe;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 6*(1/self numberButtons);
						leftFraction: 5*(1/self numberButtons);
						yourself);
		 yourself.