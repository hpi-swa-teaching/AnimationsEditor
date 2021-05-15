initialize-release
testLoadJsonLoadMorphs
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'type' -> 'Morph' . 'properties' -> {} . 'frames' -> {{'properties' -> {}} as: Dictionary}} as: Dictionary . {'type' -> 'Morph' . 'properties' -> {} . 'frames' -> {{'properties' -> {}} as: Dictionary}} as: Dictionary}.
	morph := animationsEditorInstance loadMorphs: data.
	self assert: animationsEditorInstance propertyList size = 3.
	animationsEditorInstance propertyList second targetMorph abandon.
	animationsEditorInstance propertyList third targetMorph abandon.
	animationsEditorInstance windowReference abandon.