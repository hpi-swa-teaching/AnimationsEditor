as yet unclassified
testTargetColorGetterAsString
	| p |
	p := AnimationsEditorPropertyColor new.
	
	self assert: (p targetColorAsString =  p defaultTargetColor asString).