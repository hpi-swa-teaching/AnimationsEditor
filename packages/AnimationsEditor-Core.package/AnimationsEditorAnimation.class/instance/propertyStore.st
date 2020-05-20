accessing
propertyStore
	propertyStore
	ifNil: [propertyStore := OrderedCollection new].
	^ propertyStore.