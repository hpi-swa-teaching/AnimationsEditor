creation
convertFrameToPosition: aFrame 
	| position totalDuration framesPerPixel frameOffset |
	
	totalDuration := self timeline endTime - self timeline startTime.
	framesPerPixel := totalDuration / self lineSegmentWidth. 
	frameOffset := aFrame / framesPerPixel. 
	position := self startMargin + frameOffset.
	^ position.