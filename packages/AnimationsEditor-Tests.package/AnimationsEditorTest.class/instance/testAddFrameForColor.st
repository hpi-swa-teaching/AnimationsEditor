saveJson
testAddFrameForColor
	| aDictionary aProperty |
	
	aDictionary := ((self animationsEditorInstance addFrame: self colorTreeNode) at: self colorTreeNode title asSymbol) value. 
	aProperty := (aDictionary at: #properties) first. 
	
	self assert: (aProperty at: #name) equals: 'color'. 
	