initialize-release
seedProperties
	| durationTime |
	self flag: #todo.
	durationTime := AnimationsEditorPropertyStartEnd new.

	self propertyList add: durationTime.