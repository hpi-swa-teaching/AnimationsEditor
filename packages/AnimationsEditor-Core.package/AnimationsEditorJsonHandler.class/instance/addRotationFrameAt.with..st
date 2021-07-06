saveJson
addRotationFrameAt: aTime with: aRotationDegree 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTime
		with: #properties -> { 
			Dictionary 
				with: #name -> 'rotation'
				with: #value -> aRotationDegree
		}.
		
	^ jsonFrame.