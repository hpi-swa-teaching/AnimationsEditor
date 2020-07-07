accessing
colorAsString
	color
		ifNil: [color := Color veryLightGray].
	
	 ^ color asString.