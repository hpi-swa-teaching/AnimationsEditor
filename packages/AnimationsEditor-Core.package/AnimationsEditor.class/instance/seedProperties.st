initialize-release
seedProperties
	| setting sub sub2 |
	self flag: #todo.
	setting := AnimationsEditorProperty new
						title: 'Morph'.
	
	sub := AnimationsEditorPropertyPosition new
						title: 'Position'.
						
	sub2 := AnimationsEditorPropertyPosition new
						title: 'Position-2'.
						
	setting subproperties add: sub.
	setting subproperties add: sub2.
	self propertyList add: setting.