loadJson
testLoadMorphs
		| morph data |
		
	data := {{'type' -> 'Morph'. 'properties' -> {}. 'frames' -> {{'frame' -> 500. 'properties' -> {}} as: Dictionary}} as: Dictionary. {'type' -> 'Morph'. 'properties' -> {}. 'frames' -> {{'frame' -> 1000 . 'properties' -> {}} as: Dictionary}} as: Dictionary}.
	
	morph := self animationsEditorInstance loadMorphs: data.
	self assert: self animationsEditorInstance propertyList size = 4.
	self animationsEditorInstance propertyList third targetMorph abandon.
	self animationsEditorInstance propertyList fourth targetMorph abandon.