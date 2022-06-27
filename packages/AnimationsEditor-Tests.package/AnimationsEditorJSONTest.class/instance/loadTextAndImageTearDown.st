loadJson
loadTextAndImageTearDown
	| aPropertyList |
	
	aPropertyList := self animationsEditorInstance propertyList.
	aPropertyList second targetMorph isFlexed
		ifTrue: [aPropertyList second targetMorph owner abandon].
	aPropertyList second targetMorph abandon. 
	self animationsEditorInstance propertyList removeAt: 2. 