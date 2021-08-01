testing
testKeyframeExceptStartFrameIsNotExistent
	"Image properties don't have automatic start frames so the behaviour is different here."
	self assert: self property isKeyframeExceptStartFrameExistent = false.