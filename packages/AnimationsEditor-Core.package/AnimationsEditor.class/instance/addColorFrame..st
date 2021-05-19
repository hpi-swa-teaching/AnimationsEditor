saveJson
addColorFrame: aTreeNode 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetDuration
		with: #properties -> { 
			Dictionary 
				with: #name -> aTreeNode title asLowercase
				with: #value -> aTreeNode targetColorAsString.
		}.
		
	^ jsonFrame.

	