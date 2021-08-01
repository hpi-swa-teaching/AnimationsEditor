testing
testComparators
	| propertyItemL propertyItemR |
	
	propertyItemL := AnimationsEditorProperty new.
	propertyItemR := AnimationsEditorProperty new.	
	propertyItemL title: 'ABC'.
	propertyItemR title: 'ABD'.
	self assert: (propertyItemL <= propertyItemR).
	self assert: (propertyItemR <= propertyItemL) not.
	self assert: (propertyItemL < propertyItemR).
	self assert: (propertyItemR < propertyItemL) not.
	propertyItemR title: 'ABC'.
	self assert: (propertyItemL <= propertyItemR).
	self assert: (propertyItemR <= propertyItemL).
	self assert: (propertyItemL < propertyItemR) not.
	self assert: (propertyItemR < propertyItemL) not.