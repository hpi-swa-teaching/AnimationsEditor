initialization
addTimebar 
	| timebar |
	
	timebar := AnimationsEditorTimebar on: self withExtent: self width @ self trackHeight. 
	self addMorph: timebar.
	self timebar: timebar. 
	self timebar updateScale. 
