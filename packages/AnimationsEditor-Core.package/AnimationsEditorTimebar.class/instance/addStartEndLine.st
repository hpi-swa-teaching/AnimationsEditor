updating
addStartEndLine
    
    self addLineFrom: self startMargin @ self height to: self startMargin @ (self height - self startEndLineHeight).
    self addLineFrom: self startMargin + self lineSegmentWidth @ self height to: self startMargin + self lineSegmentWidth @ (self height - self startEndLineHeight). 