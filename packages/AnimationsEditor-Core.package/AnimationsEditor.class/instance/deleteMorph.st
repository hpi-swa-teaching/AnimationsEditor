messaging
deleteMorph

	self selectedTreeNode ifNil: [^ 'break'].  
	self propertyList copy do: [:each | self selectedTreeNode targetMorph = each targetMorph ifTrue: [each targetMorph extent: 0@0. each 	targetMorph abandon. self propertyList remove: each]].
	
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	
	
	