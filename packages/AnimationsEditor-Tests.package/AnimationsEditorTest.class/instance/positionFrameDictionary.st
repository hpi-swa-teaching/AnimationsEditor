saveJson
positionFrameDictionary
	^ Dictionary
		with: #frame -> 0
		with: #properties -> { 
			Dictionary 
				with: #name -> 'positionX'  
				with: #value -> 100. 
			Dictionary 
				with: #name -> 'positionY'
				with: #value -> 200.				
		}.
