loadJson
framePropertiesDictionary
	^ {#rotation -> [:anDictionary :aValue | (anDictionary at: 'rotation') targetRotation: aValue].
	#positionX -> [:anDictionary :aValue | (anDictionary at: 'position') positionX: aValue].
	#positionY -> [:anDictionary :aValue | (anDictionary at: 'position') positionY: aValue].
	#width -> [:anDictionary :aValue | (anDictionary at: 'size') targetWidth: aValue].
	#height -> [:anDictionary :aValue | (anDictionary at: 'size') targetHeight: aValue].
	#color -> [:anDictionary :aValue | (anDictionary at: 'color') targetColor: aValue]} as: IdentityDictionary.
	
	

	