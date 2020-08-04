initialize-release
testGetDeepestMorph
	| animationsEditorInstance point deepestMorph |
	animationsEditorInstance := AnimationsEditor open.
	
	point := animationsEditorInstance windowReference topLeft.
	deepestMorph := (animationsEditorInstance
								getDeepestMorph: animationsEditorInstance windowReference
								at: point).
	self assert: (deepestMorph = nil) not.
	
	animationsEditorInstance windowReference abandon.