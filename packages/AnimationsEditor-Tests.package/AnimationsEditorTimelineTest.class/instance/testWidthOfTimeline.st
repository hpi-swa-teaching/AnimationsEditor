testing
testWidthOfTimeline
| oldWidth |
	
	"we need to make sure that the timeline is longer than 1000 or else the minWidth invalidates the test"
	self createKeyframeWith: self animationPosition on: self endFrame + 1000.

	oldWidth := self timeline width.
	self createKeyframeWith: self animationPosition on: self endFrame + 2000.
	self assert: oldWidth + 2000 = self timeline width.