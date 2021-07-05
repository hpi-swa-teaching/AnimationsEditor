saveJson
addPositionFrameAt: aTime with: aPoint
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTime
		with: #properties -> { 
			Dictionary 
				with: #name -> 'positionX'
				with: #value -> aPoint x. 
			Dictionary 
				with: #name -> 'positionY'
				with: #value -> aPoint y.			
		}.
		
	^ jsonFrame.