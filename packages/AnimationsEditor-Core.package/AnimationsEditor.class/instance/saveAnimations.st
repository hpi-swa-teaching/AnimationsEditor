eventHandling
saveAnimations
	self updateInformationText: 'Copied animation code to clipboard!'.
	Clipboard clipboardText: self selectedTreeNode animationString.