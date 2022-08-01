testing
testDistanceBetweenKeyframes
	| frameDistance distanceBetweenKeyframes startKeyframeMorph addedKeyframeMorph |
	
	self createKeyframeWith: self animationPosition on: self frameNumber1000.
	frameDistance := self frameNumber1000 - self startFrame.
	addedKeyframeMorph := self positionTrack submorphs first.
	startKeyframeMorph := self positionTrack submorphs second.
	distanceBetweenKeyframes := addedKeyframeMorph bounds origin - startKeyframeMorph bounds origin.
	self assert: frameDistance = distanceBetweenKeyframes x.