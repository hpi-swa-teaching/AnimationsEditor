buildComponents
loadJSON: aText
	| data morphs |
	
	data:= STON fromString: aText.
	
	self propertyStartEnd startTime: (self propertyStartEnd startTime min: (data at: 'start')).
	self propertyStartEnd endTime: (self propertyStartEnd endTime max:  (data at: 'end')).
	
	morphs:= data at: 'morphs'.
	morphs do:[:each | self addMorphFromSpec: each ].
	