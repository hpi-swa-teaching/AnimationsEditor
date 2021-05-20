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
				with: #value -> aMorph rotationDegrees. 
			Dictionary
				with: #name -> 'positionx'
				with: #value -> aMorph x. 
			Dictionary
				with: #name -> 'positiony'
				with: #value -> aMorph y. 
			Dictionary
				with: #name -> 'width'
				with: #value -> aMorph width. 
			Dictionary
				with: #name -> 'height'
				with: #value -> aMorph height. 
			Dictionary
				with: #name -> 'color'
				with: #value -> (aMorph color) asString.
			}.
			
	self assert: json equals: testJson. 
	