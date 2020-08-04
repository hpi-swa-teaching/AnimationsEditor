as yet unclassified
testSetPosition
	| dummyMorph propertyPosition startPosition endPosition duration animation |
	propertyPosition := AnimationsEditorPropertyPosition new.
	
	dummyMorph := Morph new.
	startPosition := 0@0.
	endPosition := 421@422.
	duration := 500.
	propertyPosition positionY: endPosition y.
	propertyPosition positionX: endPosition x.
	
	animation := propertyPosition createAnimationFor: dummyMorph.
	
	self assert: (animation duration = duration).
	self assert: (animation endValue = endPosition).
	self assert: (animation startValue = startPosition).