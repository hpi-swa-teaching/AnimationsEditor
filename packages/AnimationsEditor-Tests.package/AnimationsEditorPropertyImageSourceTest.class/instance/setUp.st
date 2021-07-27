running
setUp
	super setUp.
	self imageMorph: ImageMorph new openInWorld.
	self propertyImageSource: (AnimationsEditorPropertyImageSource on: self imageMorph). 
	JPEGReadWriter2 putForm: self dummyImage onFileNamed: self dummyImagePathJPEG.