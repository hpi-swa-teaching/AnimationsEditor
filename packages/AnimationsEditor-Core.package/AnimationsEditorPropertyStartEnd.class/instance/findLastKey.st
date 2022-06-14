updating
findLastKey
	| last |
	
	last:= self endTime.
	self property subproperties do:[:subproperty | subproperty targetValues keysDo: [:key | key > last ifTrue:[last:= key]]].
	^last
	
	