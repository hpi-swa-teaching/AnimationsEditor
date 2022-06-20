updating
updateStartEndProperty
	| startEndProperty | 

     startEndProperty := self animationsEditor propertyStartEnd. 
	startEndProperty property: self property. "<--- Ich vermute, dass diese Zeile nicht ausgeführt wird und dadurch den Defekt erzeugt."
	self property ifNotNil: [
		self property subproperties
		do:[:subproperty | subproperty addDependent: startEndProperty].
		].
   	