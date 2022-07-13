messaging
deleteMorph: aProcess
"NEEDS REFACTORING"
"selected tree node needs to be set to some property when the morph is added"
"not tested on other morphs apart from normal morph"
	self selectedTreeNode ifNil: [^ 'break']. 
	
	self propertyList copy do: [:each | 
	Transcript show: self propertyList first ; cr.	
		
	"(self selectedTreeNode targetMorph = each targetMorph or: ((self selectedTreeNode isFlexed) ifTrue: [self selectedTreeNode owner = each targetMorph] ifFalse: [false]))	"
			(self selectedTreeNode targetMorph = each targetMorph or: (self selectedTreeNode targetMorph hasSubmorphs ifTrue: [self selectedTreeNode targetMorph submorphs first = each targetMorph] ifFalse: [false])) "checks if selected tree node or it's child (because it can be a transformation morph that has target morph a child) the same as the one of the morphs in the property list" 	
		ifTrue: [self selectedTreeNode targetMorph removeFlexShell.  self propertyList remove: each. each targetMorph abandon. ].].
		
	"to do: delete the JSON! for that look in animations editor property animated >> deleteAllKeyframes"
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	
	"need to terminate process for each property"
	
	"self selectedTreeNode process terminate." "doesnot work"
	
	"self propertyTreeMorph submorphs do: [:every | every process terminate]." "not right place to terminate"
	self propertyEditorPanel submorphs do: [:each| each abandon]. "clear property editor panel"
	self timeline submorphs do: [:each| each abandon]. "leaves the background and scroll panel from timeline. Fiqure out how to delete it"
	Transcript show: 'process'; cr.
	Transcript show: aProcess isBlocked; cr.
	aProcess terminate.
	Transcript show: 'process2'; cr.

	
	