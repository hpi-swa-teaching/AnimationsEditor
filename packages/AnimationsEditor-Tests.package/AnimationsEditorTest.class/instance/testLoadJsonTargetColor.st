initialize-release
testLoadJsonTargetColor
	| data morph morphProperty |
	
	data := {{'properties' ->{{
					'value' -> 'blue'.
					'name' -> 'color'
				} as: Dictionary
				}} as: Dictionary} as: Array.
	morph := Morph new openInWorld.
	morphProperty := self animationsEditorInstance addTargetMorph: morph.
	self animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'color') targetColor = Color blue.
	morph abandon.