eventHandling
getLastKey
	| last |
	last := 0.
	self propertyList do: [:each | each subproperties do:[:subproperty | subproperty targetValues keysDo: [:key | 
			key > last ifTrue: [last:= key]]]].
	^ last.