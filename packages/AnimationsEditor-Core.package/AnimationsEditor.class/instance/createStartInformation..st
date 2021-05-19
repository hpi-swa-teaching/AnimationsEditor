saveJson
createStartInformation: aMorph
	
	^ Dictionary
		with: #type -> aMorph class asString
            with: #properties -> {
			Dictionary 
				with: #name -> 'rotation'
				with: #value -> aMorph rotationDegrees. 
			Dictionary
				with: #name -> 'positionX'
				with: #value -> aMorph x. 
			Dictionary
				with: #name -> 'positionY'
				with: #value -> aMorph y. 
			Dictionary
				with: #name -> 'width'
				with: #value -> aMorph width. 
			Dictionary
				with: #name -> 'height'
				with: #value -> aMorph height. 
			Dictionary
				with: #name -> 'color'
				with: #value -> aMorph color asString.
			}.