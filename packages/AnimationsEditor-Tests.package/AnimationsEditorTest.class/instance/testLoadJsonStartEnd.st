initialize-release
testLoadJsonStartEnd
	| animationsEditorInstance data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {'end' -> 500 . 'start' -> 0} asDictionary.
	animationsEditorInstance loadStartEnd: data.
	self assert: animationsEditorInstance propertyList first startTime = 0.
	self assert: animationsEditorInstance propertyList first endTime = 500.

	"self loadMorphs: (data at: 'morphs')."
	"animationsEditorInstance loadJSON: "
	animationsEditorInstance windowReference abandon.