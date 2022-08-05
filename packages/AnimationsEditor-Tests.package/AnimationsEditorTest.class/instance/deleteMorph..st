support
deleteMorph: aMorph
	aMorph isFlexed
		ifTrue: [aMorph owner abandon]. "removes FlexShell"
	aMorph abandon.