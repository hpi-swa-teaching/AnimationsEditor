saveJson
addSizeFrameAt: aTime with: anExtent 
	| jsonFrame |
	
	jsonFrame := Dictionary with: #frame -> aTime with: #properties -> {
		Dictionary with: #name -> 'width' with: #value -> anExtent x.
		Dictionary with: #name -> 'height' with: #value -> anExtent y
	}.
	^ jsonFrame.