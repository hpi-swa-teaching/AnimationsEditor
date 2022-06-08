updating
addIntermediateLines
	| positionX intermediateStart intermediateEnd lineRepetition |
	
	intermediateStart := self timeline startTime + 1.
	intermediateEnd := self timeline endTime - 1.
	lineRepetition := 100.
	intermediateStart to: intermediateEnd
		do: [:frame | frame \\ lineRepetition = 0
				ifTrue: [
					positionX := self convertFrameToPosition: frame.
					self
						addLineFrom: positionX @ self height to: positionX @ (self height - self lineHeight);
						addLineLabelFor: (frame asString) to: (positionX - self labelXOffset) @ (self height - self lineHeight - self labelYOffset)]].