testing
testUpdateTargetColorTestMorphChanged
	| colorText |

	self propertyColor buildUIWith: MorphicToolBuilder new.  
	self propertyColor update: Color red. 
	colorText := (self propertyColor dependents at: 2) textMorph text. 
	self assert: colorText equals: 'FF0000'.
	