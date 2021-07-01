creation
addKeyframes 
	| keyframeMorph |
	
	self property targetValues keysAndValuesDo: [:key :value |
		keyframeMorph := AnimationsEditorKeyframe on: self withPosition: ( self convertFrameToPosition: key @ 30) withFrame: key withValue: value. 
		self keyframeMorphs add: keyframeMorph. 
		]. 