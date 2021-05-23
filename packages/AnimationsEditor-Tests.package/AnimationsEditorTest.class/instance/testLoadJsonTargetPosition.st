initialize-release
testLoadJsonTargetPosition
	| data morph morphProperty |
	
	data := {{'properties' ->{{
					'value' -> 48.0.
					'name' -> 'positionX'
				} as: Dictionary.
				{
					'value' -> 104 .
					'name' -> 'positionY'
				} as: Dictionary}} as: Dictionary} as: Array.
	morph := Morph new openInWorld.
	morphProperty := self animationsEditorInstance addTargetMorph: morph.
	self animationsEditorInstance loadFramesFromJson: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'position') targetPosition = (48@104).
	morph abandon.