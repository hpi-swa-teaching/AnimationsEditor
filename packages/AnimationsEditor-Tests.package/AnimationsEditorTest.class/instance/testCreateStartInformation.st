saveJson
testCreateStartInformation 
	| json aMorph testJson |

	aMorph := (self animationsEditorInstance propertyList second) targetMorph.
	json := self animationsEditorInstance createStartInformation: aMorph. 
	testJson := self startInformationDictionary: aMorph. 
			
	self assert: json equals: testJson. 
	