initialize-release
animationsName
	animationsName ifNil: [self animationsName: 'Animations Editor - Untitled*'].
	^animationsName.