initialize-release
testLoadJsonTargetPosition
	| animationsEditorInstance data morph morphProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'properties' ->{{
					'value' -> 48.0.
					'name' -> 'positionX'
				} asDictionary.
				{
					'value' -> 104 .
					'name' -> 'positionY'
				} asDictionary}} asDictionary} asArray.
	morph := Morph new openInWorld.
	morphProperty := animationsEditorInstance addTargetMorph: morph.
	animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'position') targetPosition = (48@104).
	animationsEditorInstance windowReference abandon.
	morph abandon.