eventHandling
handleListenEvent: anEvent
	| currentTarget |
	currentTarget := self currentHand selectedObject.
	currentTarget
		ifNotNil: [
			anEvent type == #mouseUp
				ifTrue: [self addSelectedMorphFor: anEvent]].