testing
setUp

	super setUp.
	self animationsEditorInstance: AnimationsEditor open.
	self morph: Morph new openInWorld.
	self animationsEditorInstance addTargetMorph: self morph.
	self timeline: self animationsEditorInstance timeline.
	self propertyRotation isActivated: true.
	self animationsEditorInstance selectedTreeNode: self propertyRotation.
	self rotationTrack: (self timeline submorphs at: 2).
	self propertyRotation addDependent: self rotationTrack.
	self createKeyframeWith: self animationRotation100 on: self frameNumber100.
	self createKeyframeWith: self animationRotation200 on: self frameNumber200.
	self keyframe100: self rotationTrack submorphs second.
	self keyframe200: self rotationTrack submorphs first.