initialize-release
testLoadJsonPropertyColor
	| animationsEditorInstance morph data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{
					'value' -> 'blue'.
					'name' -> 'color'
				} asDictionary}.
	morph := Morph new.
	animationsEditorInstance loadStartProperties: data with: morph.
	self assert: morph color = Color blue.
	animationsEditorInstance windowReference abandon.