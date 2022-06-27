as yet unclassified
selectProperty
	|targetMorph property parentProperty propertyList|
	"targetMorph := self animationsEditor propertyList second."
	parentProperty := self track property parentProperty title. 
	propertyList := self animationsEditor propertyList.
	targetMorph := propertyList detect: [:each | parentProperty match: each title].
	
	
	targetMorph hasSubproperties 
			ifTrue: [property := targetMorph subproperties detect: [:each| self track property asString match: each asString]].
	^property
	
	
