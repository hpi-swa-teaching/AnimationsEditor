saveJson
imageFrameDictionary
	^ Dictionary  
		with: #frame-> self defaultTime
		with: #properties->{
			Dictionary
				with: #name->'imageSource'
				with: #value-> 'dummy.png'.}. 