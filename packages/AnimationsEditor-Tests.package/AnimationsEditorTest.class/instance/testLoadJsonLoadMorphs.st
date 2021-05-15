initialize-release
testLoadJsonLoadMorphs
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'type' -> 'Morph' . 'properties' -> {} . 'frames' -> {{'properties' -> {}} asDictionary}} asDictionary . {'type' -> 'Morph' . 'properties' -> {} . 'frames' -> {{'properties' -> {}} asDictionary}} asDictionary}.
	morph := animationsEditorInstance loadMorphs: data.
	self assert: animationsEditorInstance propertyList size = 3.
	animationsEditorInstance propertyList second targetMorph abandon.
	animationsEditorInstance propertyList third targetMorph abandon.
	animationsEditorInstance windowReference abandon.