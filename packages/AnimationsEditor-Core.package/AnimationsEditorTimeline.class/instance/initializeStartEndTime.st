initialization
initializeStartEndTime 
    | startEndProperty |
    
    startEndProperty := self animationsEditor propertyStartEnd. 
    self
        startTime: startEndProperty startTime; 
        endTime: startEndProperty endTime.
    startEndProperty addDependent: self.