testing
testGetDeepestMorph
	| point deepestMorph |
	point := self animationsEditorInstance windowReference topLeft.
	deepestMorph := self animationsEditorInstance getDeepestMorph: self animationsEditorInstance windowReference at: point.
	self assert: (deepestMorph = nil) not.