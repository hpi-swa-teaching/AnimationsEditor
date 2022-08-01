testing
testAddKeyframeToRightPosition
	| keyframeCenter middleOfKeyframeBar keyframeBarPosition addedKeyframeMorph |
	
	keyframeBarPosition := self positionTrack position.
	middleOfKeyframeBar := keyframeBarPosition + (self middleOfAnimationTime @ (self positionTrack height / 2)) + (self timeline startMargin @ 0).
	self createKeyframeWith: self animationPosition on: self middleOfAnimationTime.
	addedKeyframeMorph := self positionTrack submorphs first.
	keyframeCenter := addedKeyframeMorph center.
	self assert: middleOfKeyframeBar truncated  = keyframeCenter.