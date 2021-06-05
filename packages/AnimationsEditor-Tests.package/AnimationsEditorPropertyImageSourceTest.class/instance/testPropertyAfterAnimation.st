as yet unclassified
testPropertyAfterAnimation
	| imageMorph animation |
	imageMorph := ImageMorph new openInWorld.
	self propertyImageSource targetImage: self dummyImage.
	animation := self propertyImageSource createAnimationFor: imageMorph.
	animation register;
		start.

	(Delay forSeconds: 1) wait.
	self assert: (imageMorph image asString = self dummyImage asString).
	imageMorph abandon.