initialize-release
seedProperties
	| setting sub |
	setting := AnimationsEditorProperty new.
	setting title: 'Morph'.
	
	sub := AnimationsEditorProperty new.
	sub title: 'Position'.
	
	setting subproperties add: sub.
	propertyList add: setting.