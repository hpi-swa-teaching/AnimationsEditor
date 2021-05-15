initialize-release
testLoadJsonTargetSize
	| animationsEditorInstance data morph morphProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'properties' ->{{
					'value' -> 50 .
					'name' -> 'width'
				} asDictionary.
				{
					'value' -> 40 .
					'name' -> 'height'
				} asDictionary
				}} asDictionary} asArray.
	morph := Morph new openInWorld.
	morphProperty := animationsEditorInstance addTargetMorph: morph.
	animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'size') targetSize = (50@40).
	animationsEditorInstance windowReference abandon.
	morph abandon.