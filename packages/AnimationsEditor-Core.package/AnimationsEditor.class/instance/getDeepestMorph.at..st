eventHandling
getDeepestMorph: aMorph at: aPosition
	| morphs |
	
	morphs := aMorph morphsAt: aPosition.
	morphs size = 0 
		ifTrue: [^ aMorph]
		ifFalse: [^ morphs first].