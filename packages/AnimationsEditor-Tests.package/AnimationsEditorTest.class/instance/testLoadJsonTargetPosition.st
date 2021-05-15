initialize-release
testLoadJsonTargetPosition
	| animationsEditorInstance data morph morphProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'properties' ->{{
					'value' -> 48.0.
					'name' -> 'positionX'
				} as: Dictionary.
				{
					'value' -> 104 .
					'name' -> 'positionY'
				} as: Dictionary}} as: Dictionary} as: Array.
	morph := Morph new openInWorld.
	morphProperty := animationsEditorInstance addTargetMorph: morph.
	animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'position') targetPosition = (48@104).
	animationsEditorInstance windowReference abandon.
	morph abandon.