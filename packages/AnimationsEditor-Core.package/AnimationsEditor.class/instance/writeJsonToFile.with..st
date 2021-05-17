saveJson
writeJsonToFile: aJsonString with: aDirectory
	| outputStream |
	aDirectory
		ifNotNil: [
			outputStream := StandardFileStream newFileNamed: aDirectory, '.json'.
			aJsonString storeOn: outputStream
		]
	
	