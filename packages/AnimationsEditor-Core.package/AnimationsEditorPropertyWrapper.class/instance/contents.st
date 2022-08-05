accessing
contents
	^ self item subproperties sorted asOrderedCollection collect: [ :each | 
			self class with: each model: self model].