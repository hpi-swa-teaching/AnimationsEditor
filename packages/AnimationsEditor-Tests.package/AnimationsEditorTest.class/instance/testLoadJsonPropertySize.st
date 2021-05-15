initialize-release
testLoadJsonPropertySize
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{
					'value' -> 50 .
					'name' -> 'width'
				} as: Dictionary.
				{
					'value' -> 40 .
					'name' -> 'height'
				} as: Dictionary}.
	morph := Morph new.
	animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph width = 50.
	self assert: morph height = 40.
	animationsEditorInstance windowReference abandon.