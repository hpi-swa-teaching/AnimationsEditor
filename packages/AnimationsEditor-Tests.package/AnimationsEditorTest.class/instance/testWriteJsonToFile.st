saveJson
testWriteJsonToFile
	| jsonString |
	
	jsonString := '{ "Test": { "id": "1"} }'.
	self animationsEditorInstance writeJsonToFile: jsonString with: 'test'.  
	self assert: false. 
	"read json using STON reader and compare. Delete Test file" 