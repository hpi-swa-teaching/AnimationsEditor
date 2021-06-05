saveJson
positionFramesCollection
	| aCollection |
	aCollection := OrderedCollection new. 
	aCollection add: 
		(Dictionary
			with: #frame -> self defaultTime
			with: #properties -> { 
				Dictionary 
					with: #name -> 'positionX'  
					with: #value -> 100. 
				Dictionary 
					with: #name -> 'positionY'
					with: #value -> 200.				
			}
		).
	aCollection add: 
		(Dictionary
			with: #frame -> self defaultNextTime
			with: #properties -> { 
				Dictionary 
					with: #name -> 'positionX'  
					with: #value -> 200. 
				Dictionary 
					with: #name -> 'positionY'
					with: #value -> 250.				
			}
		).
	^ aCollection. 
