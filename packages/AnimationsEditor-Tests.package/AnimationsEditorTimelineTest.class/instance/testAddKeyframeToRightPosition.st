testing
testAddKeyframeToRightPosition
	| keyframeCenter keyframeBar keyframeBarPosition addedKeyframeMorph |
	
	keyframeBar := (self positionTrack submorphs at: 2).
	
	keyframeBarPosition := keyframeBar position.
	
	self createKeyframeWith: self animationPosition on: self middleOfAnimationTime.
	
	addedKeyframeMorph := self positionTrack submorphs first.
	keyframeCenter := addedKeyframeMorph center.
	self assert: ((keyframeBar width / 2) @ (keyframeBar height / 2) + keyframeBarPosition) truncated = keyframeCenter.