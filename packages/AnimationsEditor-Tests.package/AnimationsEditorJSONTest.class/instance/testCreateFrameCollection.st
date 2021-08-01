saveJson
testCreateFrameCollection
	|  frameCollection |
	
	frameCollection := self jsonHandler createFrameCollection: self dummyProperty. 
	self assert: frameCollection size equals: self dummyProperty subproperties size. 