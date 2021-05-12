safeJson
createStructureWith: aStartTime and: anEndTime
	| jsonStructure |
	
	jsonStructure := Dictionary
		with: #start -> aStartTime
		with: #end -> anEndTime
		with: #morphs -> {}.
		
	^ jsonStructure.