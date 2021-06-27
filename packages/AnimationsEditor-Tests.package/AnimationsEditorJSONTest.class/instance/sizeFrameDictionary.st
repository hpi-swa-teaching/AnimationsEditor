saveJson
sizeFrameDictionary
	^ Dictionary
		with: #frame -> self defaultTime
		with: #properties -> { 
			Dictionary 
				with: #name -> 'width' 
				with: #value -> 100.
			Dictionary 
				with: #name -> 'height'
				with: #value -> 200.		
		}.