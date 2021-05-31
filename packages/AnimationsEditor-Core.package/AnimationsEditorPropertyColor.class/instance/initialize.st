initialize-release
initialize
	super initialize.
	self title: 'Color'.
	self colorPicker: AnimationsEditorColorPicker new. 
	self colorPicker addDependent: self.