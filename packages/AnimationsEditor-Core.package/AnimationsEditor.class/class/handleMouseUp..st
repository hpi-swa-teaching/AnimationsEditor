as yet unclassified
handleMouseUp: aEvent
	super handleMouseUp: aEvent.
	Transcript show: self currentWorld activeHand selectedObject.