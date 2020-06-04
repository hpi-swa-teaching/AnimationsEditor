accessing
propertyStore
	propertyStore
		ifNil: [self propertyStore: OrderedCollection new].
		
	^ propertyStore.