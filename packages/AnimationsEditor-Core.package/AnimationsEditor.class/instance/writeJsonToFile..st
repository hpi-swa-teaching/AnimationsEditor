saveJson
writeJsonToFile: aJsonString
	| outputStream fileName|
	
	fileName := UIManager default request: 'Please, enter file name.'.
	outputStream := StandardFileStream newFileNamed: fileName, '.json'.
	aJsonString storeOn: outputStream.
	