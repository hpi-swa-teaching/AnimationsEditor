saveJson
testCreateFrameCollection
	|  frameCollection |
	
	frameCollection := self animationsEditorInstance createFrameCollection: self positionTreeNode. 
	
	self assert: frameCollection equals: self positionFramesCollection. 