initialize
changeTargetMorphToFlexShell
	self targetMorph isFlexed
		ifTrue: [self targetMorph: self targetMorph owner]
		ifFalse: [self targetMorph: self targetMorph addFlexShell].