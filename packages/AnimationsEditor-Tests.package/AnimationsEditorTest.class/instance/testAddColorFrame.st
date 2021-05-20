saveJson
testAddColorFrame
	| jsonFrame aTreeNode animationsEditorProperty testFrame |
	
	"still need to extract instantiation of the TreeNode"
	animationsEditorProperty := self animationsEditorInstance propertyList at: 2.
	aTreeNode := AnimationsEditorPropertyColor new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph color: Color red.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetColor: 'red'.
		
	jsonFrame := self animationsEditorInstance addColorFrame: aTreeNode.
	
	"also extract instantiation of testFrame"
	testFrame := Dictionary  
		with: #frame->500
		with: #properties->{
			Dictionary
				with: #name->'color'
				with: #value->'Color red'.
		}. 
	
	self assert: jsonFrame equals: testFrame.