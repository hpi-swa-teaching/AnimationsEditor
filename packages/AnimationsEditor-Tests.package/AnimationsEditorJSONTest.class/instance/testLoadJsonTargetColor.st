loadJson
testLoadJsonTargetColor
	| data morph morphProperty |
	
	data := {{'frame' -> 500 . 'properties' -> {{'value' -> 'blue' . 'name' -> 'color'} as: Dictionary}} as: Dictionary . {'frame' -> 1000 . 'properties' -> {{'value' -> 'lightGray' . 'name' -> 'color'} as: Dictionary}} as: Dictionary} as: Array.
	
	morph := Morph new openInWorld.
	morphProperty := self animationsEditorInstance addTargetMorph: morph.
	self jsonHandler loadFrames: data with: morphProperty.
	self assert: ((morphProperty subproperties at: 'color') targetValues at: 500) = 'blue'.
	self assert: ((morphProperty subproperties at: 'color') targetValues at: 1000) = 'lightGray'.
	morph abandon.