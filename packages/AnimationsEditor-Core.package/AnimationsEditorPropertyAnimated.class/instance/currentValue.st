accessing
currentValue
	currentValue
		ifNil: [self currentValue: self defaultValue].
	 ^ currentValue.