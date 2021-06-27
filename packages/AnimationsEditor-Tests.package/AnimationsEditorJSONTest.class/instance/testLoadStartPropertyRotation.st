loadJson
testLoadStartPropertyRotation
	| morph data |
	
	data := {{
					'value' -> 40.
					'name' -> 'rotation'
				} as: Dictionary}.
	morph := Morph new.
	self animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph rotationDegrees = 40.