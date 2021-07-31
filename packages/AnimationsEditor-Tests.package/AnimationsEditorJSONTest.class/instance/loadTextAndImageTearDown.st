loadJson
loadTextAndImageTearDown
	| aPropertyList |
	
	aPropertyList := self animationsEditorInstance propertyList.
	aPropertyList third targetMorph isFlexed
		ifTrue: [aPropertyList third targetMorph owner abandon].
	aPropertyList third targetMorph abandon. 
	self animationsEditorInstance propertyList removeAt: 3. 