as yet unclassified
testAnimationsForTarget
	| propertyItem propertyPosition |
	
	propertyItem := AnimationsEditorProperty new.
	self assert: (propertyItem animationsForTarget size = 0).
	
	propertyItem targetMorph: Morph new.
	propertyPosition := AnimationsEditorPropertyPosition new.
	propertyPosition setPositionTo: 42@42 WithDuration: 42.
	propertyItem subproperties add: (propertyPosition).
	self assert: (propertyItem animationsForTarget size = 1).
	
	propertyItem subproperties: OrderedCollection new.
	self assert: (propertyItem animationsForTarget size = 0).
