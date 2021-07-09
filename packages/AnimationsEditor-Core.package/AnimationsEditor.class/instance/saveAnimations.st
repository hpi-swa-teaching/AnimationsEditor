eventHandling
saveAnimations
	self updateInformationText: 'Copied animation code to clipboard!'.
	Clipboard clipboardText: self selectedTreeNode animationString.
	self selectedTreeNode hasSubproperties
		ifTrue: [self jsonHandler saveToJson: self selectedTreeNode]
		ifFalse: [self jsonHandler saveToJson: self selectedTreeNode parentProperty].