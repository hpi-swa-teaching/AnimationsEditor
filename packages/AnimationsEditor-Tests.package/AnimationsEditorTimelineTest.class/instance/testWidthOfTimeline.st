testing
testWidthOfTimeline
	| oldWidth |
	
	self createKeyframeWith: self animationPosition on: self endFrame + 1000.
	oldWidth := self timeline width.
	self createKeyframeWith: self animationPosition on: self endFrame + 2000.
	self assert: oldWidth + 2000 = self timeline width.