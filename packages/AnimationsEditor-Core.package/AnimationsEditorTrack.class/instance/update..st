updating
update: aProperty 
	self property: aProperty.
	(self property isKindOf: AnimationsEditorProperty)
		ifTrue: [self addKeyframes].