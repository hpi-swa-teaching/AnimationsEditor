updating
update: aSymbol 
	aSymbol = #addKeyframes
		ifTrue:[self endTime < self findLastKey ifTrue:[self endTime: self findLastKey]]. 

	