saveJson
testDictionaryToJson
	| json jsonString |
	
	json := Dictionary
		with: #Test ->  100. 	
										
	jsonString :=  '{
	"Test" : 100
}'. 
	self assert: (self jsonHandler dictionaryToJson: json) equals: jsonString. 
	
	