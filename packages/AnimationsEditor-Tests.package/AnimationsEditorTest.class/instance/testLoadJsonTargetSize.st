initialize-release
testLoadJsonTargetSize
	| animationsEditorInstance data morph morphProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {{'properties' ->{{
					'value' -> 50 .
					'name' -> 'width'
				} as: Dictionary.
				{
					'value' -> 40 .
					'name' -> 'height'
				} as: Dictionary
				}} as: Dictionary} as: Array.
	morph := Morph new openInWorld.
	morphProperty := animationsEditorInstance addTargetMorph: morph.
	animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'size') targetSize = (50@40).
	animationsEditorInstance windowReference abandon.
	morph abandon.