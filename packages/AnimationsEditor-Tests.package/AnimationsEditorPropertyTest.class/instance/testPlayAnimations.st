as yet unclassified
testPlayAnimations
	| propertyItem propertyPosition |
	
	propertyItem := AnimationsEditorProperty new.	
	propertyItem targetMorph: (Morph new position: 0@0).
	
	propertyPosition := AnimationsEditorPropertyPosition new.
	propertyItem subproperties add: (propertyPosition).
	propertyPosition positionX: 420.
	propertyPosition positionY: 420.

	propertyItem targetMorph openInWorld.
	propertyItem playAnimations.
	propertyItem targetMorph abandon.