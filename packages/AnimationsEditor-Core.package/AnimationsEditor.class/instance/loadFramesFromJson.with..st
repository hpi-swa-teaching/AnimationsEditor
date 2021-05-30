loadJson
loadFramesFromJson: anArray with: anAnimationEditorProperty
	(anArray first at: 'properties')
		do: [:each | (self framePropertiesDictionary at: (each at: 'name') asSymbol)
				value: anAnimationEditorProperty subproperties
				value: (each at: 'value')].