eventHandling
getDeepestMorph: aMorph at: aPosition 
	| morphs |
	
	morphs := aMorph morphsAt: aPosition.
	morphs isEmpty
		ifTrue: [^ aMorph]
		ifFalse: [^ morphs first].