calculation
moveMovingLine: aLine	
	|duration offset endPositionX| 
	endPositionX := self timeline width - 25.
	"duration :=  (self timeline endTime - self timeline startTime)/100. --> richtige Zeit"
	(aLine x >= endPositionX) ifTrue: [aLine position: endPositionX @ (aLine position y)"self abandon"]
	ifFalse:
		[
		
		duration :=  (self timeline endTime - self timeline startTime)/100.
		offset := (self timeline width - 105- 25) / duration.
		aLine position: aLine position + (offset@0).]