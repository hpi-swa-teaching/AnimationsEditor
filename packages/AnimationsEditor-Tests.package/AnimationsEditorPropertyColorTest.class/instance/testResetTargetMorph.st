testing
testResetTargetMorph
	| originalColor newColor |
	
	originalColor :=  self propertyColor targetMorph color.
	newColor := Color green.
	self propertyColor targetMorph color: newColor.
	self propertyColor resetTargetMorph.
	self assert: self propertyColor targetMorph color = originalColor.