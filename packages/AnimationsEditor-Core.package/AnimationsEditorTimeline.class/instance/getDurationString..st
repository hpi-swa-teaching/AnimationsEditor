updating
getDurationString: aNumber
	|temp|
	temp:= aNumber/1000 asFloat.
	^ 'Duration: ', temp, ' s'.