as yet unclassified
testCreateAnimationFor
	| animation |
	animation := self propertyImageSource createAnimationFor: self propertyImageSource targetMorph.
	self assert: (animation isKindOf: AnimAnimation).