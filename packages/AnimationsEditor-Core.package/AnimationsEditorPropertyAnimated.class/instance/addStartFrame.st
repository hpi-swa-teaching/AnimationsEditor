as yet unclassified
addStartFrame 
	self
		currentValue: (self animationPropertyFor: self targetMorph);
		targetFrame: 0; 
		addKeyframe. 