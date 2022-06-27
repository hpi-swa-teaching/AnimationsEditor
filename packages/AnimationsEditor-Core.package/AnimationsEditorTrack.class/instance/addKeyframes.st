creation
addKeyframes
	| keyframeMorph |
	
	self property targetValues
		keysAndValuesDo: [:key :value | 
			keyframeMorph := AnimationsEditorKeyframe
						on: self
						withPosition: (self convertFrameToPosition: key) @ (self position y - self keyframeMargin)
						withFrame: key
						withValue: value
						withAnimationsEditor: self animationsEditor.
			self addMorph: keyframeMorph].