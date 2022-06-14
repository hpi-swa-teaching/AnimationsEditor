testing
testWidthOfTimeline
| oldWidth |
	
	oldWidth := self timeline width.
	self createKeyframeWith: self animationPosition on: self endFrame + 2000.
	self assert: oldWidth + 2000 = self timeline width.