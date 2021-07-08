accessing
copyOfTargetMorph
	copyOfTargetMorph
		ifNil: [self copyOfTargetMorph: self targetMorph].
	
	^ copyOfTargetMorph.