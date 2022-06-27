loadJson
testLoadMorphs
	| secondMorph thirdMorph |
	
	self jsonHandler loadMorphs: self loadMorphsData.
	secondMorph := self animationsEditorInstance propertyList second targetMorph.
	thirdMorph := self animationsEditorInstance propertyList third targetMorph.
	self assert: self animationsEditorInstance propertyList size = 3.
	
	secondMorph isFlexed
		ifTrue: [secondMorph owner abandon].
	secondMorph abandon.
	thirdMorph isFlexed
		ifTrue: [thirdMorph owner abandon].
	thirdMorph abandon.