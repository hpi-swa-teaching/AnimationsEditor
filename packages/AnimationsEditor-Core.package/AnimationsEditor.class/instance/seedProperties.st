initialize-release
seedProperties
	| setting sub |
	setting := AnimationsEditorProperty new
						title: 'Morph'.
	
	sub := AnimationsEditorPropertyPosition new
						title: 'Position'.
	
	setting subproperties add: sub.
	self propertyList add: setting.