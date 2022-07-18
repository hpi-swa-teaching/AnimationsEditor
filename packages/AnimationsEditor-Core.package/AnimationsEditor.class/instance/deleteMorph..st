eventHandling
deleteMorph: aProcess
"

	self selectedTreeNode ifNil: [^ 'break']. 
	
	self propertyList copy do: [:each | 
	Transcript show: self propertyList first ; cr.	
			(self selectedTreeNode targetMorph = each targetMorph or: (self selectedTreeNode targetMorph hasSubmorphs ifTrue: [self selectedTreeNode targetMorph submorphs first = each targetMorph] ifFalse: [false])) 
				
		ifTrue: [self selectedTreeNode targetMorph removeFlexShell.  self propertyList remove: each. each targetMorph abandon. ].].
		
	
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	
	self propertyEditorPanel submorphs do: [:each| each abandon]. 
	self timeline submorphs do: [:each| each abandon]. 
	Transcript show: 'process'; cr.
	Transcript show: aProcess isBlocked; cr.
	aProcess terminate.
	Transcript show: 'process2'; cr.
"
	
	