initialize-release
tearDown 
	(self animationsEditorInstance propertyList at: 2) targetMorph owner abandon. 
	(self animationsEditorInstance propertyList at: 2) targetMorph abandon. 
	self animationsEditorInstance windowReference abandon.