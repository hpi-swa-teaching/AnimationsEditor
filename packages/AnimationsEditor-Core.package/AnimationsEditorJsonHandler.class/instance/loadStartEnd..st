loadJson
loadStartEnd: aDictionary
	| propertyStartEnd |
	propertyStartEnd := self animationsEditor propertyStartEnd.
	propertyStartEnd startTime: (propertyStartEnd startTime min: (aDictionary at: 'start')).
	propertyStartEnd endTime: (propertyStartEnd endTime max:  (aDictionary at: 'end')).