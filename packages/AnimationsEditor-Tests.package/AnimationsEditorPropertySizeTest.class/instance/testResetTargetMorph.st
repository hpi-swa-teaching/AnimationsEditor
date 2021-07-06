testing
testResetTargetMorph
	| originalExtent newExtent |
	
	originalExtent :=  self propertySize targetMorph extent.
	newExtent := originalExtent x + 50 @ (originalExtent y + 50).
	self propertySize targetMorph extent: newExtent.
	self propertySize resetTargetMorph.
	self assert: self propertySize targetMorph extent = originalExtent.