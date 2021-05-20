saveJson
testCreateStartInformation 
	| json aMorph testJson |

	aMorph := (self animationsEditorInstance propertyList at: 2) targetMorph. 
	json := self animationsEditorInstance createStartInformation: aMorph. 
	testJson := self startInformationDictionary: aMorph. 
			
	self assert: json equals: testJson. 
	