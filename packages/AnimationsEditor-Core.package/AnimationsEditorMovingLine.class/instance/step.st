as yet unclassified
step
	|duration offset| 
	"duration :=  (self timeline endTime - self timeline startTime)/100. --> richtige Zeit"
	((self position x) > (self convertFrameToPosition: (self timeline endTime))) ifTrue: [self abandon]
	ifFalse:
		[duration :=  (self timeline endTime - self timeline startTime)/100.
		offset := (self timeline width - (self startMargin) - (self endMargin)) / duration.
		self position: self position + (offset@0).]
	
	