as yet unclassified
testCreateAnimation
	| propertyPosition animation endPosition duration morph |
	morph := Morph new.
	propertyPosition := AnimationsEditorPropertyPosition new.
	endPosition := 421@422.
	duration := 500. "default value"
	propertyPosition setPositionTo: endPosition WithDuration: duration.
	animation := propertyPosition createAnimationFor: morph.
	
	self assert: (animation duration = duration).
"	self assert: (animation endValue = endPos)."
	self assert: (animation startValue = morph position).
	
	morph abandon.