initialize-release
testLoadJsonTargetRotation
	| animationsEditorInstance data morph morphProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'properties' ->{{
					'value' -> 40 .
					'name' -> 'rotation'
				}asDictionary}} asDictionary} asArray.
	morph := Morph new openInWorld.
	morphProperty := animationsEditorInstance addTargetMorph: morph.
	animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'rotation') targetRotation = 40.
	animationsEditorInstance windowReference abandon.
	morph abandon.