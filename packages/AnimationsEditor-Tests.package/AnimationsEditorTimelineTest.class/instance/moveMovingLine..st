calculation
moveMovingLine: aLine	
	|duration offset endPositionX| 
	
	endPositionX := self timeline width - 25.
	(aLine x >= endPositionX) ifTrue: [aLine position: endPositionX @ (aLine position y)]
		ifFalse:
			[duration :=  (self timeline endTime - self timeline startTime)/100.
				offset := (self timeline width - 105- 25) / (duration max: 1).
				aLine position: aLine position + (offset@0)]