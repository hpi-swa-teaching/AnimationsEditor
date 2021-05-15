initialize-release
testLoadJsonPropertyRotation
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{
					'value' -> 40.
					'name' -> 'rotation'
				} as: Dictionary}.
	morph := Morph new.
	animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph rotationDegrees = 40.
	animationsEditorInstance windowReference abandon.