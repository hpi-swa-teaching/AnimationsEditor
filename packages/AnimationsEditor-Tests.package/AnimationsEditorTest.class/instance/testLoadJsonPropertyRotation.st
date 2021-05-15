initialize-release
testLoadJsonPropertyRotation
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{
					'value' -> 40.
					'name' -> 'rotation'
				} asDictionary}.
	morph := Morph new.
	animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph rotationDegrees = 40.
	animationsEditorInstance windowReference abandon.