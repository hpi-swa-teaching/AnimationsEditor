initialize-release
initialize
	|ui window |
	self propertyList: OrderedCollection new.
	super initialize.
	self seedProperties.
	self initializeJsonHandler.
	
	ui := AnimationsEditorUI on: self.
	window := ToolBuilder open: ui.
	self windowReference: window.
	self ui: self windowReference model.
