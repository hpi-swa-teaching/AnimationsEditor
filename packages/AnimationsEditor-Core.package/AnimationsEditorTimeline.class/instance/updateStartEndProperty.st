updating
updateStartEndProperty
| startEndProperty | 

     startEndProperty := self animationsEditor propertyStartEnd. 
	startEndProperty property: self property.
   	self property subproperties
		do:[:subproperty | subproperty addDependent: startEndProperty].