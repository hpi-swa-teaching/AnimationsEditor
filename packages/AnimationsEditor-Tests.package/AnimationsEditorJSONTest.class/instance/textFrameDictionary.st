saveJson
textFrameDictionary
	
	^ Dictionary  
		with: #frame-> self defaultTime
		with: #properties->{
			Dictionary
				with: #name->'text'
				with: #value-> 'abc'.
		}. 