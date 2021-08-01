testing
testAddKeyframeToRightPosition
	| keyframeCenter keyframeBar keyframeBarPosition addedKeyframeMorph |
	
	keyframeBar := (self positionTrack submorphs at: (self secondLastOn: self positionTrack)).
	keyframeBarPosition := keyframeBar bounds origin x @ keyframeBar bounds origin y.
	
	self createKeyframeWith: self animationPosition on: self middleOfAnimationTime.
	
	addedKeyframeMorph := self positionTrack submorphs first.
	keyframeCenter := self calculateKeyframeCenterOn: addedKeyframeMorph.
	
	self assert: (keyframeBar width / 2) @ (keyframeBar height / 2) + keyframeBarPosition = keyframeCenter.