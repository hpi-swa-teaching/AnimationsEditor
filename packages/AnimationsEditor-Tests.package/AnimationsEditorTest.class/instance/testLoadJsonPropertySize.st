initialize-release
testLoadJsonPropertySize
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{
					'value' -> 50 .
					'name' -> 'width'
				} asDictionary.
				{
					'value' -> 40 .
					'name' -> 'height'
				} asDictionary}.
	morph := Morph new.
	animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph width = 50.
	self assert: morph height = 40.
	animationsEditorInstance windowReference abandon.