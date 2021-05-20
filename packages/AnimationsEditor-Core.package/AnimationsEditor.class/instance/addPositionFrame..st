saveJson
addPositionFrame: aTreeNode 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetDuration
		with: #properties -> { 
			Dictionary 
				with: #name -> (aTreeNode title asLowercase , 'X')
				with: #value -> aTreeNode targetPosition x. 
			Dictionary 
				with: #name -> (aTreeNode title asLowercase, 'Y')
				with: #value -> aTreeNode targetPosition y.			
		}.
		
	^ jsonFrame.

	