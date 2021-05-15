load-json
propertiesDictionary
	^ {#rotation -> [:aMorph :aValue | aMorph rotationDegrees: aValue].
	#positionX -> [:aMorph :aValue | aMorph left: aValue].
	#positionY -> [:aMorph :aValue | aMorph top: aValue].
	#width -> [:aMorph :aValue | aMorph width: aValue].
	#height -> [:aMorph :aValue | aMorph height: aValue].
	#color -> [:aMorph :aValue | aMorph color: (Color colorFrom: aValue)]} as: IdentityDictionary.
	
	

	