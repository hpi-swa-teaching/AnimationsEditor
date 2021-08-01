loadJson
loadFrames: anArray with: anAnimationEditorProperty
	| frameId subproperty |

	anArray do: [ :frame| 
		frameId := frame at: 'frame'.
		(frame at: 'properties')
			do: [:each | subproperty := ((self subpropertyFrom: anAnimationEditorProperty subproperties) at: (each at: 'name') asSymbol) value.
				subproperty targetFrame: frameId.
				((self framePropertiesFor: subproperty with: (each at: 'value')) at: (each at: 'name') asSymbol) value.
				subproperty addKeyframe]].