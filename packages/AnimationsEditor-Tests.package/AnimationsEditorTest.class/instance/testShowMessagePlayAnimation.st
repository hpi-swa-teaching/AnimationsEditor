testing
testShowMessagePlayAnimation
	| property |

	property := (self animationsEditorInstance propertyList at: 2) subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: property.
	
	property positionX: 555;
		 positionY: 555;
		 frame: 500;
		 addKeyframe.
	
	self animationsEditorInstance playAnimations.
	self assert: self animationsEditorInstance informationBarText = self animationsEditorInstance messagePlayAnimations.