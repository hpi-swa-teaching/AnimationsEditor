running
setUp
	super setUp.
	self imageMorph: ImageMorph new openInWorld.
	self propertyImageSource: AnimationsEditorPropertyImageSource new.
	self propertyImageSource 
		targetFrame: 0;
		targetMorph: self imageMorph;
		copyOfTargetMorph: self propertyImageSource targetMorph copy.