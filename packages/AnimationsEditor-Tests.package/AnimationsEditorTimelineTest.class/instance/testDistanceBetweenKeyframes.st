testing
testDistanceBetweenKeyframes
	| frameDistance distanceBetweenKeyframes startKeyframeMorph addedKeyframeMorph keyframeBar |
	
	self createKeyframeWith: self animationPosition on: self frameNumber1000.
	keyframeBar := (self positionTrack submorphs at: (self secondLastOn: self positionTrack)).
	frameDistance := self frameNumber1000 - self startFrame.
	addedKeyframeMorph := self positionTrack submorphs first.
	startKeyframeMorph := self positionTrack submorphs second.
	distanceBetweenKeyframes := addedKeyframeMorph bounds origin - startKeyframeMorph bounds origin.
	
	self assert: (keyframeBar width - self paddingDistance) // (self endFrame / frameDistance) = distanceBetweenKeyframes x.