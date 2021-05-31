saveJson
startInformationDictionary: aMorph 
	^ Dictionary
		with: #type -> 'Morph'
            with: #properties -> {
			Dictionary 
				with: #name -> 'rotation'
				with: #value -> aMorph rotationDegrees. 
			Dictionary
				with: #name -> 'positionX'
				with: #value -> aMorph position x. 
			Dictionary
				with: #name -> 'positionY'
				with: #value -> aMorph position y. 
			Dictionary
				with: #name -> 'width'
				with: #value -> aMorph width. 
			Dictionary
				with: #name -> 'height'
				with: #value -> aMorph height. 
			Dictionary
				with: #name -> 'color'
				with: #value -> aMorph color rgbTriplet.
			}.
	