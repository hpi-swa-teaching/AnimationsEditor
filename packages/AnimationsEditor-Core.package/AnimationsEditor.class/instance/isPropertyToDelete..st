notclassified
isPropertyToDelete: aProperty

	^ self selectedTreeNode targetMorph = aProperty targetMorph or: 
			(self selectedTreeNode targetMorph hasSubmorphs 
				ifTrue: 
					[self selectedTreeNode targetMorph submorphs first = aProperty targetMorph]
				ifFalse: 
					[false]).