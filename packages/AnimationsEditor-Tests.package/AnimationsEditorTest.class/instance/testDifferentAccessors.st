initialize-release
testDifferentAccessors
	| animationsEditorInstance |
	
	animationsEditorInstance := AnimationsEditor open.
	
	animationsEditorInstance emptyPanels: 42.
	self assert: (animationsEditorInstance emptyPanels = 42).
	
	self assert: (animationsEditorInstance toolBuilder = nil) not.
	animationsEditorInstance toolBuilder: nil.
	self assert: (animationsEditorInstance toolBuilder = nil).
	
	animationsEditorInstance dummyList: OrderedCollection new.
	self assert: (animationsEditorInstance dummyList size = 0).
	
	animationsEditorInstance windowReference abandon.