as yet unclassified
setUp
	super setUp.
	self morph: self morphClass new openInWorld.
	self property: (self propertyClass on: self morph). 