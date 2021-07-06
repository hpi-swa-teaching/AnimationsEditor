loadJson
testLoadStartPropertyRotation
	| morph data |
	
	data := {{
					'value' -> 40.
					'name' -> 'rotation'
				} as: Dictionary}.
	morph := Morph new.
	self jsonHandler loadStartProperties: data with: morph.
	self assert: morph rotationDegrees = 40.