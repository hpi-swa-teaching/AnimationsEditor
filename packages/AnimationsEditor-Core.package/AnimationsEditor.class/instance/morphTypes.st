loadJson
morphTypes
	^ {#Morph -> [Morph new]. 
	#CircleMorph -> [CircleMorph new]. 
	#RectangleMorph -> [RectangleMorph new]. 
	#TextMorph -> [TextMorph new]. 
	#ImageMorph ->[ImageMorph new]} as: IdentityDictionary.