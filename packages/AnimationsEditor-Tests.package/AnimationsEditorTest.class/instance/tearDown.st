saveJson
tearDown 
	"self animationsEditorInstance selectedTreeNode targetMorph abandon. "
	(self animationsEditorInstance propertyList at: 2) targetMorph abandon. 
	self animationsEditorInstance windowReference abandon.
	
	