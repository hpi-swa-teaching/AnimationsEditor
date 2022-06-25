as yet unclassified
selectProperty
	|targetMorph property|
	targetMorph := self animationsEditor propertyList second.
	"targetMorph hasSubproperties 
		ifTrue: [property := targetMorph subproperties keyAtValue: self track property].
	^property asString."
	
	
	targetMorph hasSubproperties 
			ifTrue: [property := targetMorph subproperties detect: [:each| self track property asString match: each asString]].
	^property
	"^ self animationsEditor propertyList second subproperties at: self track property ."