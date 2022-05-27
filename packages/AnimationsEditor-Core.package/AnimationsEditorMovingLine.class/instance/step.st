as yet unclassified
step
	|duration offset endPositionX| 
	endPositionX := self timeline width - (self endMargin).
	"duration :=  (self timeline endTime - self timeline startTime)/100. --> richtige Zeit"
	(self position x >= endPositionX) ifTrue: [self position: endPositionX @ (self position y)"self abandon"]
	ifFalse:
		[
		
		duration :=  (self timeline endTime - self timeline startTime)/100.
		offset := (self timeline width - (self startMargin) - (self endMargin)) / duration.
		self position: self position + (offset@0).]
	