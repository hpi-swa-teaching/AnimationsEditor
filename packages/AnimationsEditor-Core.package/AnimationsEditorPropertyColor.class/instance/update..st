eventHandling
update: aColor
	self currentValue: aColor.
	self changed: #currentValueAsHexRGBString.
	