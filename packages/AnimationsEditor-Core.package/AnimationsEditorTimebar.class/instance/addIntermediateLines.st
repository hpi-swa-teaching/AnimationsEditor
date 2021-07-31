updating
addIntermediateLines
    | positionX |
    
    self timeline startTime + 1
        to: self timeline endTime - 1
        do: [:frame | frame \\ 100 = 0 
                ifTrue: [
                    positionX := self convertFrameToPosition: frame. 
                    self addLineFrom: positionX @ self height to: positionX @ (self height - self lineHeight)]
                ].