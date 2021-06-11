as yet unclassified
testPropertyAfterAnimation
	| animation |
	self propertyImageSource targetImage: self dummyImage.
	animation := self propertyImageSource createAnimationFor: self propertyImageSource targetMorph.
	animation animations
		do: [:each | each evaluateFinishBlock].
	self assert: self propertyImageSource targetMorph image bits = self dummyImage bits.