initialization
seedProperties
	self propertyStartEnd: AnimationsEditorPropertyStartEnd new.
	self propertyStartEnd animationsEditor: self.
	self propertyList add: self propertyStartEnd.