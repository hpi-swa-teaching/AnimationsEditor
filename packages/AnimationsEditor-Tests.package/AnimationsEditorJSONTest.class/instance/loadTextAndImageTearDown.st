loadJson
loadTextAndImageTearDown
	| aPropertyList |
	
	aPropertyList := self animationsEditorInstance propertyList. 
	aPropertyList third targetMorph abandon. 
	self animationsEditorInstance propertyList removeAt: 3. 