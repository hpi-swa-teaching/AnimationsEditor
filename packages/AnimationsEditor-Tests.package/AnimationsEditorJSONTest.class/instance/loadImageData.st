loadJson
loadImageData
	^ {
		{
			'frame' -> 500.
			'properties' -> {
				{
					'value' -> 'cat1.png'.
					'name' -> 'imageSource'
				} as: Dictionary
			}
		} as: Dictionary.
		{
			'frame' -> 1000.
			'properties' -> {
				{
					'value' -> 'cat2.png'.
					'name' -> 'imageSource'
				} as: Dictionary
			}
		} as: Dictionary
	} as: Array.
	