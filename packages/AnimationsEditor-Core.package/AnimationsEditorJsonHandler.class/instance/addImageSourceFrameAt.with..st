saveJson
addImageSourceFrameAt: aTime with: aFilename 
	| jsonFrame |
	
	jsonFrame := Dictionary with: #frame -> aTime with: #properties -> {Dictionary with: #name -> 'imageSource' with: #value -> aFilename}.
	^ jsonFrame.