as yet unclassified
selectedProperty
	|selectedMorph property|
	selectedMorph := self animationsEditor propertyList second.
	selectedMorph hasSubproperties 
			ifTrue: [property := selectedMorph subproperties detect: [:each| self track property asString match: each asString]].
	^property
	"^ self animationsEditor propertyList second subproperties at: self track property ."