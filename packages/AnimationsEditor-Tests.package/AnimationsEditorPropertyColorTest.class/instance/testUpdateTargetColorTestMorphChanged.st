testing
testUpdateTargetColorTestMorphChanged
	| colorText |

	self property buildUIWith: MorphicToolBuilder new.  
	self property update: Color red. 
	colorText := (self property dependents at: 3) textMorph text. 
	self assert: colorText equals: 'FF0000'.
	