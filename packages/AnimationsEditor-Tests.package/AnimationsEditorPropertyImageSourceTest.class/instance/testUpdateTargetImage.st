as yet unclassified
testUpdateTargetImage
	JPEGReadWriter2 putForm: self dummyImage onFileNamed: self dummyImagePathJPEG.
	self propertyImageSource targetSource: self dummyImagePathJPEG.
	self propertyImageSource updateTargetImage.
	self assert: self propertyImageSource loadedSource = self dummyImagePathJPEG.
	self assert: self propertyImageSource targetImage bits = self dummyImage bits.
	FileDirectory default deleteFileNamed: self dummyImagePathJPEG.