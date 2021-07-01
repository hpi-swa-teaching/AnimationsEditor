loadJson
framePropertiesDictionary: aFrameId
	^ {#rotation -> [:anDictionary :aValue |(anDictionary at:'rotation') targetValues at: aFrameId put:aValue].
	#positionX -> [:anDictionary :aValue | (anDictionary at: 'position')  targetValues at: aFrameId put:aValue].
	#positionY -> [:anDictionary :aValue | (anDictionary at: 'position')  targetValues at: aFrameId put:(((anDictionary at: 'position') targetValues at: aFrameId) @ aValue)].
	#width -> [:anDictionary :aValue | (anDictionary at: 'size')  targetValues at: aFrameId put:aValue].
	#height -> [:anDictionary :aValue | (anDictionary at: 'size')  targetValues at: aFrameId put:(((anDictionary at: 'size') targetValues at: aFrameId) @ aValue)].
	#color -> [:anDictionary :aValue | (anDictionary at: 'color') targetValues at: aFrameId put:aValue].
	#imageSource -> [:anDictionary :aValue |(anDictionary at: 'imageSource') targetValues at: aFrameId put:aValue].
	#text -> [:anDictionary :aValue |(anDictionary at: 'text') targetValues at: aFrameId put:aValue].} as: IdentityDictionary.
	
	

	