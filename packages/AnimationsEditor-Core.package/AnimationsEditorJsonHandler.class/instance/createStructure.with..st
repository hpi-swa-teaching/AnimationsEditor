saveJson
createStructure: aStartTime with: anEndTime 
	| jsonStructure |
	
	jsonStructure := Dictionary
				with: #start -> aStartTime
				with: #end -> anEndTime
				with: #morphs -> {}.
	^ jsonStructure.