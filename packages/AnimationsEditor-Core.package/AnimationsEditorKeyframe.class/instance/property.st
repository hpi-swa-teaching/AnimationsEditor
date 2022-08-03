accessing
property
	|targetMorph property parentProperty propertyList|
	
	parentProperty := self track property parentProperty title. 
	propertyList := self animationsEditor propertyList.
	targetMorph := propertyList detect: [ :each | 
		parentProperty match: each title].
	targetMorph hasSubproperties 
			ifTrue: [property := targetMorph subproperties detect: [ :each | 
					self track property asString match: each asString]].
	^ property
	
	
