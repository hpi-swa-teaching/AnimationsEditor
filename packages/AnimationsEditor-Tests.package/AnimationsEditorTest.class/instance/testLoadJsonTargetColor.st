initialize-release
testLoadJsonTargetColor
	| animationsEditorInstance data morph morphProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'properties' ->{{
					'value' -> 'blue'.
					'name' -> 'color'
				} asDictionary
				}} asDictionary} asArray.
	morph := Morph new openInWorld.
	morphProperty := animationsEditorInstance addTargetMorph: morph.
	animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'color') targetColor = Color blue.
	animationsEditorInstance windowReference abandon.
	morph abandon.