safeJson
addSizeFrame: aTreeNode 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetDuration
		with: #properties -> { 
			Dictionary 
				with: #name -> 'width' 
				with: #value -> aTreeNode targetSize x.
			Dictionary 
				with: #name -> 'height'
				with: #value -> aTreeNode targetSize y				
		}.
		
	^ jsonFrame.