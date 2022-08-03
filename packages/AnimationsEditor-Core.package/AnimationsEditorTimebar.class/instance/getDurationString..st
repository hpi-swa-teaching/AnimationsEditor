updating
getDurationString: aNumber
	| temp |
	temp:= (aNumber asInteger)/1000 asFloat.
	^ 'Duration: ', temp, ' s'.