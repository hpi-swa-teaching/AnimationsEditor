accessing
animationsName
	animationsName
		ifNil: [self animationsName: 'Animations Editor - Untitled*'].
		
	^ animationsName.