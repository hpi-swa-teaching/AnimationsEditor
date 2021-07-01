initialization
initializeStartEndTime 
	| startEndProperty |
	
	startEndProperty := self animationsEditor propertyList first. 
	self
		startTime: startEndProperty startTime; 
		endTime: startEndProperty endTime.
	startEndProperty addDependent: self.
	