as yet unclassified
step
	| endPositionX| 
	
	endPositionX := self timeline width - (self endMargin).
	(self position x >= endPositionX) ifTrue: [self abandon]
	ifFalse:
		[self position: self position + (1@0* self speed).].
	