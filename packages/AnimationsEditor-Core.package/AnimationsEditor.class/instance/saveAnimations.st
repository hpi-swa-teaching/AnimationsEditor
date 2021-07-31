eventHandling
saveAnimations
	Clipboard clipboardText: self selectedTreeNode animationString.
	self selectedTreeNode hasSubproperties
		ifTrue: [self jsonHandler saveToJson: self selectedTreeNode]
		ifFalse: [self jsonHandler saveToJson: self selectedTreeNode parentProperty].
	self updateInformationText: self savedAnimationText.