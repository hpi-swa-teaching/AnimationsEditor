accessing
resetTargetMorph
	self copyOfTargetMorph 
		ifNil: [^ true].
	self targetMorph position: (self copyOfTargetMorph) position.
	self targetMorph color: (self copyOfTargetMorph) color.
	self targetMorph extent: (self copyOfTargetMorph) extent.
	self targetMorph position: (self copyOfTargetMorph) position.