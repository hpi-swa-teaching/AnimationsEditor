load-json
loadStartProperties: anArray with: aMorph 
	anArray
		do: [:each | (self propertiesDictionary at: (each at: 'name') asSymbol)
				value: aMorph
				value: (each at: 'value')].