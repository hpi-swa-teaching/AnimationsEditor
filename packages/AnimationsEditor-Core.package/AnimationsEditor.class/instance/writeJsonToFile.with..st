saveJson
writeJsonToFile: aJsonString with: aDirectory
	| outputStream |
	
	outputStream := StandardFileStream newFileNamed: aDirectory, '.json'.
	aJsonString storeOn: outputStream.
	