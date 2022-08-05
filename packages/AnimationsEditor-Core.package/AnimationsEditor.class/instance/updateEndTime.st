eventHandling
updateEndTime
	self propertyList isEmpty
		ifFalse: [self propertyStartEnd endTime: self getLastKey]
		ifTrue: [self propertyStartEnd update: #deleteLastMorph].
	
	