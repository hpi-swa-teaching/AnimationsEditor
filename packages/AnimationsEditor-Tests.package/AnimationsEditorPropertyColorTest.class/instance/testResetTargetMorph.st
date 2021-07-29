testing
testResetTargetMorph
	| originalColor newColor |
	
	originalColor :=  self property targetMorph color.
	newColor := Color green.
	self property targetMorph color: newColor.
	self property resetTargetMorph.
	self assert: self property targetMorph color = originalColor.
	self assert: (originalColor = newColor) not.