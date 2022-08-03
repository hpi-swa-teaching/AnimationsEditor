updating
update: aSymbol 
	aSymbol = #addKeyframes
		ifTrue:[self endTime < self findLastKey ifTrue:[self endTime: self findLastKey]]. 
	aSymbol = #deleteKeyframes
		ifTrue:[self endTime > self findLastKey ifTrue:[self endTime: self findLastKey]]. 
	aSymbol = #deleteMorph
		ifTrue:[self endTime: self findLastKey]. 
	aSymbol = #deleteLastMorph
		ifTrue:[self endTime: self defaultEndTime]. 