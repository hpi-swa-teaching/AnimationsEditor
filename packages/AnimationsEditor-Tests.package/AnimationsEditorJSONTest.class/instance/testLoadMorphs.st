loadJson
testLoadMorphs
	| thirdMorph fourthMorph |
	
	self jsonHandler loadMorphs: self loadMorphsData.
	thirdMorph := self animationsEditorInstance propertyList third targetMorph.
	fourthMorph := self animationsEditorInstance propertyList fourth targetMorph.
	self assert: self animationsEditorInstance propertyList size = 4.
	
	thirdMorph isFlexed
		ifTrue: [thirdMorph owner abandon].
	thirdMorph abandon.
	fourthMorph isFlexed
		ifTrue: [fourthMorph owner abandon].
	fourthMorph abandon.