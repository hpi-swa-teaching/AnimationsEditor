accessing
setCenteredPosition: aPoint 
	| offset |
	
	offset:= (-7.5 @ 7.5).
	self position: aPoint + offset.