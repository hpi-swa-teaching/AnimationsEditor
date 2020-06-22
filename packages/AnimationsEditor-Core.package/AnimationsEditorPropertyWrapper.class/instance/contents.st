accessing
contents
	^ self item subproperties sorted collect: [ :each | 
														AnimationsEditorPropertyWrapper
															with: each
															model: self model].