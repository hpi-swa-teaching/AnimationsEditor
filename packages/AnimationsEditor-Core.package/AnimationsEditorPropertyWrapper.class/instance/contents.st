accessing
contents
	^ self item subproperties sorted collect: [ :each | 
															self class
															with: each
															model: self model].