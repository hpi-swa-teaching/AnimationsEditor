safeJson
safeToJson: aTreeNode
	| json frame jsonString |
	
	json := self createStartInformation: aTreeNode. 
	frame := ((self addFrame: aTreeNode) at: aTreeNode title asSymbol) value.
	json add: #frames -> frame.
	
	jsonString := String streamContents: [ :stream |
   		(STON writer on: stream)
      		prettyPrint: true;
      		jsonMode: true;
      		referencePolicy: #error;
      		nextPut: json ].