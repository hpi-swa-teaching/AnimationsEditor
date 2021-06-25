loadJson
testLoadStartPropertyPosition
	| morph data |
	
	data := {{
					'value' -> 48.0.
					'name' -> 'positionX'
				} as: Dictionary.
				{
					'value' -> 104 .
					'name' -> 'positionY'
				} as: Dictionary}.
	morph := Morph new.
	self animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph position = (48@104).