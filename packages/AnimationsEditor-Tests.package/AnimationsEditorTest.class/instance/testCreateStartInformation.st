saveJson
testCreateStartInformation 
	| json aMorph |

	aMorph := (self animationsEditorInstance propertyList at: 2) targetMorph. 
	json := self animationsEditorInstance createStartInformation: aMorph. 
	
	"maby it's better to compare two dicts"
	self assert: (json at: #type) equals: (aMorph class) asString. 
	self assert: (((json at: #properties) at: 1) at: #name) equals: 'rotation'.  
	self assert: (((json at: #properties) at: 1) at: #value) equals: aMorph rotationDegrees.  
	self assert: (((json at: #properties) at: 2) at: #name) equals: 'positionX'.  
	self assert: (((json at: #properties) at: 2) at: #value) equals: aMorph x. 
	self assert: (((json at: #properties) at: 3) at: #name) equals: 'positionY'.  
	self assert: (((json at: #properties) at: 3) at: #value) equals: aMorph y. 
	self assert: (((json at: #properties) at: 4) at: #name) equals: 'width'.  
	self assert: (((json at: #properties) at: 4) at: #value) equals: aMorph width. 
	self assert: (((json at: #properties) at: 5) at: #name) equals: 'height'.  
	self assert: (((json at: #properties) at: 5) at: #value) equals: aMorph height. 
	self assert: (((json at: #properties) at: 6) at: #name) equals: 'color'.  
	self assert: (((json at: #properties) at: 6) at: #value) equals: (aMorph color) asString.
	