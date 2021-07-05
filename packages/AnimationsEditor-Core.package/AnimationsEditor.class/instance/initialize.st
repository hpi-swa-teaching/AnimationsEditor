initialize-release
initialize
	self propertyList: OrderedCollection new.
	super initialize.
	self seedProperties.
	self initializeJsonHandler.
