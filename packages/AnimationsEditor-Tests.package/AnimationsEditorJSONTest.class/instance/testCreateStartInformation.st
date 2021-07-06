saveJson
testCreateStartInformation 
	| json aMorph testJson |

	aMorph := (self animationsEditorInstance propertyList second) targetMorph.
	json := self jsonHandler createStartInformation: aMorph. 
	testJson := self startInformationDictionary: aMorph. 

	self assert: json equals: testJson. 
	