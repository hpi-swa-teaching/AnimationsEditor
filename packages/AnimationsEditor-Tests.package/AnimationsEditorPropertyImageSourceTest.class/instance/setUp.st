running
setUp
	super setUp.
	self imageMorph: ImageMorph new openInWorld.
	self propertyImageSource: (AnimationsEditorPropertyImageSource on: self imageMorph). 
	self propertyImageSource copyOfTargetMorph: self propertyImageSource targetMorph copy.
	JPEGReadWriter2 putForm: self dummyImage onFileNamed: self dummyImagePathJPEG.