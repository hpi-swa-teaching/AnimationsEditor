saveJson
testWriteJsonToFile
	| jsonString fileContent |
	
	jsonString := '{ "Test": { "id": "1"} }'.
	self animationsEditorInstance writeJsonToFile: jsonString with: 'test.json'.  
	fileContent := (FileStream fileNamed: 'test.json') contents.
	self assert: fileContent isEmpty not.
	(FileDirectory default) deleteFileNamed: 'test.json'.