initialize-release
testLoadJsonTargetSize
	| data morph morphProperty |
	
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
	morphProperty := self animationsEditorInstance addTargetMorph: morph.
	self animationsEditorInstance loadFrames: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'size') targetSize = (50@40).
	morph abandon.