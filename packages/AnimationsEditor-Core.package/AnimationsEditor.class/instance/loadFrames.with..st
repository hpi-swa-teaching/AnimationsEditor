loadJson
loadFrames: anArray with: anAnimationEditorProperty
	|frameId|

	anArray do: [ :frame| 
		frameId := frame at: 'frame'.
	(frame at: 'properties')
		do: [:each | ((self framePropertiesDictionary:frameId) at: (each at: 'name') asSymbol)
				value: anAnimationEditorProperty subproperties
				value: (each at: 'value')
			]].