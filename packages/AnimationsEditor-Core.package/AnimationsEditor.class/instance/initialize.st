initialization
initialize
	self propertyList: OrderedCollection new.
	self selectedPropertiesList: OrderedCollection new.
	super initialize.
	self seedProperties.
	self initializeJsonHandler.