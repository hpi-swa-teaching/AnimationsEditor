loadJson
testLoadJsonTargetPosition
	| data morph morphProperty |
	
	data := {{'frame' -> 500. 'properties' -> {{'value' -> 48. 'name' -> 'positionX'} as: Dictionary. {'value' -> 104. 'name' -> 'positionY'} as: Dictionary}} as: Dictionary . {'frame' -> 1000. 'properties' -> {{'value' -> 3. 'name' -> 'positionX'} as: Dictionary. {'value' -> 42. 'name' -> 'positionY'} as: Dictionary}} as: Dictionary} as: Array.
	
	morph := Morph new openInWorld.
	morphProperty := self animationsEditorInstance addTargetMorph: morph.
	self animationsEditorInstance loadFrames: data with: morphProperty.
	self assert: ((morphProperty subproperties at: 'position') targetValues at: 500) = (48 @ 104).
	self assert: ((morphProperty subproperties at: 'position') targetValues at: 1000) = (3 @ 42).
	morph abandon.