saveJson
createStartInformation: aTreeNode 
	| json originMorph |
	
	originMorph := aTreeNode copyOfTargetMorph. 
	
	json := Dictionary
		with: #type -> (originMorph class) asString
            with: #properties -> {
			Dictionary 
				with: #name -> 'rotation'
				with: #value -> originMorph rotationDegrees. 
			Dictionary
				with: #name -> 'positionX'
				with: #value -> originMorph x. 
			Dictionary
				with: #name -> 'positionY'
				with: #value -> originMorph y. 
			Dictionary
				with: #name -> 'width'
				with: #value -> originMorph width. 
			Dictionary
				with: #name -> 'height'
				with: #value -> originMorph height. 
			Dictionary
				with: #name -> 'color'
				with: #value -> (originMorph color) asString
			}.
			
	^ json.