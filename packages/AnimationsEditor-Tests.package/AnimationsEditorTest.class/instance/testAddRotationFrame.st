saveJson
testAddRotationFrame
	| jsonFrame aTreeNode animationsEditorProperty testFrame |
	
	"still need to extract instantiation of the TreeNode"
	animationsEditorProperty := self animationsEditorInstance propertyList at: 2.
	aTreeNode := AnimationsEditorPropertyRotation new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph rotationDegrees: 70.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetRotation: 70.
	
	jsonFrame := self animationsEditorInstance addRotationFrame: aTreeNode.
	
	"also extract instantiation of testFrame"
	testFrame := Dictionary
		with: #frame -> 500
		with: #properties -> { 
			Dictionary 
				with: #name -> 'rotation'  
				with: #value -> 70.			
		}.
		
	self assert: jsonFrame equals: testFrame.