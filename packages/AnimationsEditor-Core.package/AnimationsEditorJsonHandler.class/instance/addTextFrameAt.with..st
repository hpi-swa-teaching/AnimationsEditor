saveJson
addTextFrameAt: aTime with: aString
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTime
		with: #properties -> { 
			Dictionary 
				with: #name -> 'text'
				with: #value -> aString. 
		}.
		
	^ jsonFrame.