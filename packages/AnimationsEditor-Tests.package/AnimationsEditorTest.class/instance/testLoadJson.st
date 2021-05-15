initialize-release
testLoadJson
	| animationsEditorInstance jsonString data |
	
	animationsEditorInstance := AnimationsEditor open.
	jsonString := '{"value" : 500}'.
	data := STON fromString: jsonString.
	self assert: (data at: 'value') = 500.
	animationsEditorInstance windowReference abandon.