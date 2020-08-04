as yet unclassified
testCreateAnimation
	| propertyPosition animation endPosition duration morph |
	morph := Morph new.
	propertyPosition := AnimationsEditorPropertyPosition new.
	endPosition := 421@422.
	duration := 500.
	
	propertyPosition positionY: endPosition y.
	propertyPosition positionX: endPosition x.
	
	animation := propertyPosition createAnimationFor: morph.
	
	self assert: (animation startValue = morph position).
	morph abandon.