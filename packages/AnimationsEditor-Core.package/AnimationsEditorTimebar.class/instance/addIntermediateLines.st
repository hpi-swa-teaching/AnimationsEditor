updating
addIntermediateLines
	| positionX frame |
	
	frame := self timeline startTime + self intermediateLineDistance.
	[self timeline endTime > frame] 
		whileTrue: [positionX := self convertFrameToPosition: frame.
			self addLineFrom: positionX @ self height to: positionX @ (self height - self lineHeight).
			self addLineLabelFor: (frame asString) to: (positionX - self labelXOffset) @ (self height - self lineHeight - self labelYOffset).
			frame := frame + self intermediateLineDistance].