testing
testResetTargetMorph
	| originalPosition newPosition |

	originalPosition := self property targetMorph position.
	newPosition := originalPosition + (50 @ 50).
	self property targetMorph position: newPosition.
	self property resetTargetMorph.
	self assert: self property targetMorph position = originalPosition.