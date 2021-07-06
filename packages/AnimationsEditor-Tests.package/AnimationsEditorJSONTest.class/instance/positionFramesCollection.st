saveJson
positionFramesCollection
	| frame1 frame2 |
	
	frame1 := Dictionary
				with: #frame -> self defaultTime
				with: #properties -> { 
					Dictionary 
						with: #name -> 'positionX'  
						with: #value -> 100. 
					Dictionary 
						with: #name -> 'positionY'
						with: #value -> 200.				
				}. 
	frame2 := Dictionary
				with: #frame -> self defaultNextTime
				with: #properties -> { 
					Dictionary 
						with: #name -> 'positionX'  
						with: #value -> 200. 
					Dictionary 
						with: #name -> 'positionY'
						with: #value -> 250.				
				}. 
			
	^ { frame1 . frame2 }