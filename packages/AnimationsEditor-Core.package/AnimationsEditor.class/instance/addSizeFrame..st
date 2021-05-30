saveJson
addSizeFrame: aTreeNode 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetFrame
		with: #properties -> { 
			Dictionary 
				with: #name -> 'width' 
				with: #value -> aTreeNode targetSize x.
			Dictionary 
				with: #name -> 'height'
				with: #value -> aTreeNode targetSize y.				
		}.
		
	^ jsonFrame.