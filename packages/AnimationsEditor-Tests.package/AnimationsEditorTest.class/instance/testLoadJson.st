initialize-release
testLoadJson
	| jsonString data |
	
	
	jsonString := '{"value" : 500}'.
	data := STON fromString: jsonString.
	self assert: (data at: 'value') = 500.
	