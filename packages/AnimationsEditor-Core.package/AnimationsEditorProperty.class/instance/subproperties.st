accessing
subproperties
	subproperties 
		ifNil: [self subproperties: self defaultSubproperties].
		
	^ subproperties.