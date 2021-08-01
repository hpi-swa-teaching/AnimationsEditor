saveJson
testWriteJsonToFile
	| jsonString fileContent |
	
	jsonString := '{ "Test": { "id": "1"} }'.
	self jsonHandler writeJsonToFile: jsonString with: 'test.json'.  
	fileContent := (FileStream fileNamed: 'test.json') contents.
	self assert: fileContent = jsonString.
	(FileDirectory default) deleteFileNamed: 'test.json'.