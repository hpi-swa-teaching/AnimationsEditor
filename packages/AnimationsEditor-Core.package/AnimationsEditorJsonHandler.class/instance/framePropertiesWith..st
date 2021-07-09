loadJson
framePropertiesWith: aDictionary
	^ {#rotation -> [aDictionary at:'rotation'].
	#positionX -> [aDictionary at: 'position'].
	#positionY -> [aDictionary at: 'position'].
	#width -> [aDictionary at: 'size'].
	#height -> [aDictionary at: 'size'].
	#color -> [aDictionary at: 'color'].
	#imageSource -> [aDictionary at: 'imageSource'].
	#text -> [aDictionary at: 'text']} as: IdentityDictionary.