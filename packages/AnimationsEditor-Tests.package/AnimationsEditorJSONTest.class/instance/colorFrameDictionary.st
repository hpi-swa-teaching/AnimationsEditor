saveJson
colorFrameDictionary
	^ Dictionary  
		with: #frame-> self defaultTime
		with: #properties->{
			Dictionary
				with: #name->'color'
				with: #value-> #FF0000.}. 