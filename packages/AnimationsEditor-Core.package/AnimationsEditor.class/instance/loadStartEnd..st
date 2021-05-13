buildComponents
loadStartEnd: aDictionary
	self propertyStartEnd startTime: (self propertyStartEnd startTime min: (aDictionary at: 'start')).
	self propertyStartEnd endTime: (self propertyStartEnd endTime max:  (aDictionary at: 'end')).