safeJson
addColorFrame: aTreeNode
	| jsonFrame |
	
	jsonFrame := Dictionary
		with: #frame -> aTreeNode targetDuration
		with: #properties -> { 
			Dictionary 
				with: #name -> aTreeNode title  
				with: #value -> (aTreeNode targetMorph color) asString. 			
		}.
		
	^ jsonFrame.