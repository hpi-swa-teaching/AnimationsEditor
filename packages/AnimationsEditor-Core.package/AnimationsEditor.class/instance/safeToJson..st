safeJson
safeToJson: aTreeNode
	| json frame |
	
	json := self createStartInformation: aTreeNode. 
	frame := ((self addFrame: aTreeNode) at: aTreeNode title asSymbol) value.
	json add: #frames -> frame.