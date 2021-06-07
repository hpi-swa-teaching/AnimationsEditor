animation
updateTargetImage
	self targetSource == self loadedSource
		ifFalse: [self
					targetImage: (Form fromFileNamed: self targetSource);
					loadedSource: self targetSource].