saveJson
addPositionFrame: aTreeNode 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetDuration
		with: #properties -> { 
			Dictionary 
				with: #name -> (aTreeNode title, 'X')  
				with: #value -> aTreeNode targetPosition x . 
			Dictionary 
				with: #name -> (aTreeNode title, 'Y') 
				with: #value -> aTreeNode targetPosition y				
		}.
		
	^ jsonFrame.

	