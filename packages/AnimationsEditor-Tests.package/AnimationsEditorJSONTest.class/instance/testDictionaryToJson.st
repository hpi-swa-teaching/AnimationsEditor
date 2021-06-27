saveJson
testDictionaryToJson
	| json jsonString |
	
	json := Dictionary
		with: #Test ->  100. 	
										
	jsonString :=  '{
	"Test" : 100
}'. 
	self assert: (self animationsEditorInstance dictionaryToJson: json) equals: jsonString. 
	
	