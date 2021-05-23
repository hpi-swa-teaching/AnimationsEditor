saveJson
testCreateStructure
	| aStartTime anEndTime json |
	
	aStartTime := 0.
	anEndTime := 500. 
	json := self animationsEditorInstance createStructure: aStartTime with: anEndTime. 
	
	self assert: (json at: #start) equals: aStartTime. 
	self assert: (json at: #end) equals: anEndTime. 
	self assert: (json at: #morphs) isEmpty. 
	
	