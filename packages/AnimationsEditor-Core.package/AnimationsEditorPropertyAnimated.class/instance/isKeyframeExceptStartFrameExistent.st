animation
isKeyframeExceptStartFrameExistent
	self targetValues isEmpty not
		ifTrue: [self targetValues
				at: 0
				ifAbsent: [^ self targetValues size >= 1].
			^ self targetValues size >= 2]
		ifFalse: [^ false].