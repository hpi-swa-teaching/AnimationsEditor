saveJson
testAddPositionFrame
	| jsonFrame aTreeNode animationsEditorProperty testFrame |
	
	"still need to extract instantiation of the TreeNode"
	animationsEditorProperty := self animationsEditorInstance propertyList at: 2.
	aTreeNode := AnimationsEditorPropertyPosition new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph position: 100 @ 200.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetPosition: 100 @ 200.
	
	jsonFrame := self animationsEditorInstance addPositionFrame: aTreeNode.
	
	"also extract instantiation of testFrame"
	testFrame := Dictionary
		with: #frame -> 500
		with: #properties -> { 
			Dictionary 
				with: #name -> 'positionx'  
				with: #value -> 100. 
			Dictionary 
				with: #name -> 'positiony'
				with: #value -> 200.				
		}.
		
	self assert: jsonFrame equals: testFrame.