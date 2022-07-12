messaging
deleteMorph
"NEEDS REFACTORING"
	self selectedTreeNode ifNil: [^ 'break']. 
	"check if the morph is open in world than you can delete the worph from the world"
	self selectedTreeNode targetMorph isInWorld ifTrue: [
	self propertyList copy do: [:each | 
		
		
			(self selectedTreeNode targetMorph = each targetMorph or: (self selectedTreeNode targetMorph hasSubmorphs ifTrue: [self selectedTreeNode targetMorph submorphs first = each targetMorph])) "checks if selected tree node or it's child (because it can be a transformation morph that has target morph a child) the same as the one of the morphs in the property list" 	
		ifTrue: [self selectedTreeNode targetMorph removeFlexShell. self propertyList remove: each. each targetMorph abandon. ].].].
		
	
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	
	self propertyEditorPanel submorphs do: [:each| each abandon]. "clear property editor panel"
	self timeline submorphs do: [:each| each abandon]. "leaves the background and scroll panel from timeline. Fiqure out how to delete it"
	

	
	