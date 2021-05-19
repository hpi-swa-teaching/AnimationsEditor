saveJson
testAddSizeFrame
	| jsonFrame aTreeNode animationsEditorProperty testFrame |
	
	"still need to extract instantiation of the TreeNode"
	animationsEditorProperty := self animationsEditorInstance propertyList at: 2.
	aTreeNode := AnimationsEditorPropertySize new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph extent: 100 @ 200.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetSize: 100 @ 200.
	
	jsonFrame := self animationsEditorInstance addSizeFrame: aTreeNode.
	
	"also extract instantiation of testFrame"
	testFrame := Dictionary
		with: #frame -> 500
		with: #properties -> { 
			Dictionary 
				with: #name -> 'width' 
				with: #value -> 100.
			Dictionary 
				with: #name -> 'height'
				with: #value -> 200.		
		}.
		
	self assert: (jsonFrame = testFrame).