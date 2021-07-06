saveJson
positionFrameDictionary
	^ Dictionary
		with: #frame -> self defaultTime
		with: #properties -> { 
			Dictionary 
				with: #name -> 'positionX'  
				with: #value -> 100. 
			Dictionary 
				with: #name -> 'positionY'
				with: #value -> 200.				
		}.
