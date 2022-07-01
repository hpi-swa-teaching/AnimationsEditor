testing
testUpdateTargetColorTestMorphChanged
	| colorText |
	
	self property buildUIWith: MorphicToolBuilder new.  
	self property update: Color red. 
	colorText := (self property dependents at: 4) textMorph text. 
	self assert: colorText equals: 'FF0000'.
	