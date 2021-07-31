creation
convertFrameToPosition: aFrame 
    | position |
    
    position := aFrame / ((self timeline endTime - self timeline startTime) / self lineSegmentWidth) + self startMargin.
    ^ position. 