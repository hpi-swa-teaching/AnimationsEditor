running
tearDown
	super tearDown.
	self propertyImageSource targetMorph abandon.
	FileDirectory default deleteFileNamed: self dummyImagePathJPEG.