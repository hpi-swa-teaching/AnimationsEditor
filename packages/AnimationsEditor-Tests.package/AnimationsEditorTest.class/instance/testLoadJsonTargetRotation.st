initialize-release
testLoadJsonTargetRotation
	| data morph morphProperty |
	
	data := {{'properties' ->{{
					'value' -> 40 .
					'name' -> 'rotation'
				}as: Dictionary}} as: Dictionary} as: Array.
	morph := Morph new openInWorld.
	morphProperty := self animationsEditorInstance addTargetMorph: morph.
	self animationsEditorInstance loadFrames: data with: morphProperty.
	self assert: (morphProperty subproperties at: 'rotation') targetRotation = 40.
	morph abandon.