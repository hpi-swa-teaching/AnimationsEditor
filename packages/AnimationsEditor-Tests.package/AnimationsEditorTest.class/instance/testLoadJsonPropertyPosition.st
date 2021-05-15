initialize-release
testLoadJsonPropertyPosition
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{
					'value' -> 48.0.
					'name' -> 'positionX'
				} asDictionary.
				{
					'value' -> 104 .
					'name' -> 'positionY'
				} asDictionary}.
	morph := Morph new.
	animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph position = (48@104).
	animationsEditorInstance windowReference abandon.