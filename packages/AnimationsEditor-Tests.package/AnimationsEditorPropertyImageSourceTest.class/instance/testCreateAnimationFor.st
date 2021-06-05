as yet unclassified
testCreateAnimationFor
	| imageMorph animation |
	imageMorph := ImageMorph new openInWorld.
	animation := self propertyImageSource createAnimationFor: imageMorph.
	self assert: (animation isKindOf: AnimAnimation).
	imageMorph abandon.