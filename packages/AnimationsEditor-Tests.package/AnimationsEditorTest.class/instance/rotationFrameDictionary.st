saveJson
rotationFrameDictionary
	^ Dictionary
		with: #frame -> self defaultTime
		with: #properties -> { 
			Dictionary 
				with: #name -> 'rotation'  
				with: #value -> 20.			
		}.