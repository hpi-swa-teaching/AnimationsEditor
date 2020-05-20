initialize-release
initialize
	propertyList := OrderedCollection new.
	super initialize.
	self seedProperties.
	