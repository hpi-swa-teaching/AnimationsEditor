running
setUp
	super setUp.
	self propertyImageSource: AnimationsEditorPropertyImageSource new.
	self propertyImageSource 
		targetDuration: 0;
		targetMorph: ImageMorph new openInWorld;
		copyOfTargetMorph: self propertyImageSource targetMorph copy.