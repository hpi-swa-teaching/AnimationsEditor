saveJson
addSizeFrame: aTreeNode 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetDuration
		with: #properties -> { 
			Dictionary 
				with: #name -> 'Width' 
				with: #value -> aTreeNode targetSize x.
			Dictionary 
				with: #name -> 'Height'
				with: #value -> aTreeNode targetSize y				
		}.
		
	^ jsonFrame.