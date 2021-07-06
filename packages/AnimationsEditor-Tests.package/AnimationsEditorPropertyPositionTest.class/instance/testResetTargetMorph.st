testing
testResetTargetMorph
	| originalPosition newPosition |

	originalPosition := self propertyPosition targetMorph position.
	newPosition := originalPosition + (50 @ 50).
	self propertyPosition targetMorph position: newPosition.
	self propertyPosition resetTargetMorph.
	self assert: self propertyPosition targetMorph position = originalPosition.