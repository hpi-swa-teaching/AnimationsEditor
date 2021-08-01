testing
testResetTargetMorph
	| originalExtent newExtent |
	
	originalExtent :=  self property targetMorph extent.
	newExtent := originalExtent x + 50 @ (originalExtent y + 50).
	self property targetMorph extent: newExtent.
	self property resetTargetMorph.
	self assert: self property targetMorph extent = originalExtent.