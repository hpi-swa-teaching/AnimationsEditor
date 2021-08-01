saveJson
addColorFrameAt: aTime with: aColor 
	| jsonFrame |
	
	jsonFrame := Dictionary with: #frame -> aTime with: #properties -> {Dictionary with: #name -> 'color' with: #value -> aColor printHtmlString asSymbol}.
	^ jsonFrame.