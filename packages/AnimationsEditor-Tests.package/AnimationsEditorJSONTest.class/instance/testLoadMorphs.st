loadJson
testLoadMorphs
	| morph |
	
	morph := self jsonHandler loadMorphs: self loadMorphsData.
	self assert: self animationsEditorInstance propertyList size = 4.
	self animationsEditorInstance propertyList third targetMorph abandon.
	self animationsEditorInstance propertyList fourth targetMorph abandon.