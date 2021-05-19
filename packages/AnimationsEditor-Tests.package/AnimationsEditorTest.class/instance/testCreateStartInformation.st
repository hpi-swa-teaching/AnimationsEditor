saveJson
testCreateStartInformation 
	| json aMorph testJson |

	aMorph := (self animationsEditorInstance propertyList at: 2) targetMorph. 
	json := self animationsEditorInstance createStartInformation: aMorph. 
	
	"also extract instantiation of testFrame"
	testJson := Dictionary
		with: #type -> 'Morph'
            with: #properties -> {
			Dictionary 
				with: #name -> 'rotation'
				with: #value -> 0. 
			Dictionary
				with: #name -> 'positionX'
				with: #value -> 25. 
			Dictionary
				with: #name -> 'positionY'
				with: #value -> 974. 
			Dictionary
				with: #name -> 'width'
				with: #value -> 50. 
			Dictionary
				with: #name -> 'height'
				with: #value -> 40. 
			Dictionary
				with: #name -> 'color'
				with: #value -> 'Color blue'.
			}.
	
	"maby it's better to compare two dicts"
	self assert: (json = testJson)
	