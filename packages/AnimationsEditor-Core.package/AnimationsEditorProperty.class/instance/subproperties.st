accessing
subproperties
	subproperties 
		ifNil: [self subproperties: OrderedCollection new].
		
	^ subproperties.