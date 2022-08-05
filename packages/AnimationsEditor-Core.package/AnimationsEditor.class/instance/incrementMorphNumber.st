accessing
incrementMorphNumber
	| oldNumber |
	
	oldNumber := self morphNumber.
	self morphNumber: oldNumber + 1.
	^ oldNumber.