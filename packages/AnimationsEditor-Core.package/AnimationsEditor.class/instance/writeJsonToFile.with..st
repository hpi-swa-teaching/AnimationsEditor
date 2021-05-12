safeJson
writeJsonToFile: aJsonString with: aName
	| outputStream |
	
	outputStream := StandardFileStream newFileNamed: aName, '.json'.
	aJsonString storeOn: outputStream.
	