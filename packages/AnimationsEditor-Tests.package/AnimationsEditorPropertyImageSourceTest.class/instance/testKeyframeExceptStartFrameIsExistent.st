testing
testKeyframeExceptStartFrameIsExistent
	self addDefaultKeyframe.
	self assert: self property isKeyframeExceptStartFrameExistent = true.