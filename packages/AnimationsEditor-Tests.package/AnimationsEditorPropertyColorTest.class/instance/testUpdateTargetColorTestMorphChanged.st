as yet unclassified
testUpdateTargetColorTestMorphChanged
	| propertyColor colorText|
	
	propertyColor := self animationsEditorInstance propertyList second subproperties at: #color.
	propertyColor buildUIWith: MorphicToolBuilder new.  
	propertyColor update: Color red. 
	colorText := (propertyColor dependents at: 2) textMorph text. 
	self assert: colorText equals: 'FF0000'.
	