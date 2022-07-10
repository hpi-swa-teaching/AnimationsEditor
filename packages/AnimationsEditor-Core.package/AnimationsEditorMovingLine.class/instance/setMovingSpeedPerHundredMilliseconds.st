accessing
setMovingSpeedPerHundredMilliseconds

	self speed: (self timeline width - (self startMargin) - (self endMargin)) / (self animationDuration max: self minimumDuration) * 100.