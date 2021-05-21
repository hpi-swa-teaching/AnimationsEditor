saveJson
testAddFrameForColor
	| aDictionary aProperty |
	
	aDictionary := self animationsEditorInstance addFrame: self colorTreeNode. 
	self halt.
	aProperty := (aDictionary at: #properties) first. 
	
	self assert: (aProperty at: #name) equals: 'color'. 
	