eventHandling
deleteMorph
"NEEDS REFACTORING"
"selected tree node needs to be set to some property when the morph is added"
"not tested on other morphs apart from normal morph"
	self selectedTreeNode ifNil: [^ 'break']. 
	self removeMorphProperties. 
		
	"to do: delete the JSON! for that look in animations editor property animated >> deleteAllKeyframes"
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	
	"need to terminate process for each property"
	
	"self selectedTreeNode process terminate." "doesnot work"
	
	self clearPropertyEditorPanel. 
	self timeline clearTimeline. 
	

	
	