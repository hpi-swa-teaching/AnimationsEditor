as yet unclassified
addKeyframe
	self isFirstFrame
		ifTrue: [self setStartValue]. 
	self targetValues at: self targetFrame put: (self currentValue) deepCopy.