codeGeneration
updateTargetImage

	self targetSource == self loadedSource
		ifFalse: [self targetImage: (Form fromFileNamed: self targetSource)].