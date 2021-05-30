saveJson
sizeFrameDictionary
	^ Dictionary
		with: #frame -> 0
		with: #properties -> { 
			Dictionary 
				with: #name -> 'width' 
				with: #value -> 100.
			Dictionary 
				with: #name -> 'height'
				with: #value -> 200.		
		}.