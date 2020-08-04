as yet unclassified
testSetTitle
	| propertyItem dummyTitle |
	dummyTitle := 'Ich bin ein titel'.
	propertyItem := AnimationsEditorProperty new.
	propertyItem title: dummyTitle.
	
	self assert: (propertyItem title = dummyTitle).