testing
testMinWidthOfTimeline
  
  self createKeyframeWith: self animationPosition on: 0.
  self assert: self timeline minimumExtent <= self timeline width.