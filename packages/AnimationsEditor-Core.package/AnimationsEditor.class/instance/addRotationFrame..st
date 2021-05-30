saveJson
addRotationFrame: aTreeNode 
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetFrame
		with: #properties -> { 
			Dictionary 
				with: #name -> aTreeNode title asLowercase  
				with: #value -> aTreeNode targetRotation.			
		}.
		
	^ jsonFrame.