as yet unclassified
testTargetColorGetter
	| p |
	p := AnimationsEditorPropertyColor new.
	
	self assert: (p targetColor =  p defaultTargetColor).