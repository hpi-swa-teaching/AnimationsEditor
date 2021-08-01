loadJson
framePropertiesFor: aProperty with: aValue
	^ {#rotation -> [aProperty currentValue: aValue].
	#positionX -> [aProperty positionX: aValue].
	#positionY -> [aProperty positionY: aValue].
	#width -> [aProperty targetWidth: aValue].
	#height -> [aProperty targetHeight: aValue].
	#color -> [aProperty currentValueFromText: aValue].
	#imageSource -> [aProperty currentValue: aValue].
	#text -> [aProperty currentValue: aValue].} as: IdentityDictionary.