saveJson
testCreateFrameCollection
	|  frameCollection |
	
	frameCollection := self jsonHandler createFrameCollection: self positionTreeNode. 
	
	self assert: frameCollection equals: self positionFramesCollection. 