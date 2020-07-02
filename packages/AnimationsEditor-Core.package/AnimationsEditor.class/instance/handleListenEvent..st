eventHandling
handleListenEvent: anEvent
	| currentTarget |
	currentTarget := self currentHand selectedObject.
	currentTarget
		ifNotNil: [
			anEvent type == #mouseUp
				ifTrue: [
				   self addTargetMorph: (self getDeepestMorph: currentTarget at: anEvent position).
				   self currentHand removeMouseListener: self]].